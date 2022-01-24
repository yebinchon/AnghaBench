#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct l2_bucket {int /*<<< orphan*/ * l2b_kva; } ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  kernel_pmap ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 struct l2_bucket* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(vm_offset_t *availp, int pages, vm_offset_t *vap,
    pt_entry_t **ptep)
{
	vm_offset_t va = *availp;
	struct l2_bucket *l2b;

	if (ptep) {
		l2b = FUNC2(kernel_pmap, va);
		if (l2b == NULL)
			FUNC1("pmap_alloc_specials: no l2b for 0x%x", va);

		*ptep = &l2b->l2b_kva[FUNC0(va)];
	}

	*vap = va;
	*availp = va + (PAGE_SIZE * pages);
}