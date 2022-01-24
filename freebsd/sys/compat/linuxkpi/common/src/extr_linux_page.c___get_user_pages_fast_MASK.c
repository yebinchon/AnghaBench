#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  struct page* vm_page_t ;
typedef  unsigned long vm_offset_t ;
typedef  TYPE_3__* vm_map_t ;
struct page {scalar_t__ dirty; } ;
struct TYPE_10__ {TYPE_2__* td_proc; } ;
struct TYPE_9__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_8__ {TYPE_1__* p_vmspace; } ;
struct TYPE_7__ {TYPE_3__ vm_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ VM_PAGE_BITS_ALL ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 TYPE_6__* curthread ; 
 scalar_t__ FUNC1 () ; 
 struct page* FUNC2 (int /*<<< orphan*/ ,unsigned long,int) ; 
 unsigned long FUNC3 (TYPE_3__*) ; 
 unsigned long FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

int
FUNC6(unsigned long start, int nr_pages, int write,
    struct page **pages)
{
	vm_map_t map;
	vm_page_t *mp;
	vm_offset_t va;
	vm_offset_t end;
	vm_prot_t prot;
	int count;

	if (nr_pages == 0 || FUNC1())
		return (0);

	FUNC0(pages != NULL);
	va = start;
	map = &curthread->td_proc->p_vmspace->vm_map;
	end = start + (((size_t)nr_pages) << PAGE_SHIFT);
	if (start < FUNC4(map) || end > FUNC3(map))
		return (-EINVAL);
	prot = write ? (VM_PROT_READ | VM_PROT_WRITE) : VM_PROT_READ;
	for (count = 0, mp = pages, va = start; va < end;
	    mp++, va += PAGE_SIZE, count++) {
		*mp = FUNC2(map->pmap, va, prot);
		if (*mp == NULL)
			break;

		if ((prot & VM_PROT_WRITE) != 0 &&
		    (*mp)->dirty != VM_PAGE_BITS_ALL) {
			/*
			 * Explicitly dirty the physical page.  Otherwise, the
			 * caller's changes may go unnoticed because they are
			 * performed through an unmanaged mapping or by a DMA
			 * operation.
			 *
			 * The object lock is not held here.
			 * See vm_page_clear_dirty_mask().
			 */
			FUNC5(*mp);
		}
	}
	return (count);
}