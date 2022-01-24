#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int gfp_t ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int GFP_DMA32 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PG_ZERO ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PMAP_HAS_DMAP ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 scalar_t__ FUNC2 (int,unsigned int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

vm_page_t
FUNC10(gfp_t flags, unsigned int order)
{
	vm_page_t page;

	if (PMAP_HAS_DMAP) {
		unsigned long npages = 1UL << order;
		int req = VM_ALLOC_NOOBJ | VM_ALLOC_WIRED | VM_ALLOC_NORMAL;

		if ((flags & M_ZERO) != 0)
			req |= VM_ALLOC_ZERO;
		if (order == 0 && (flags & GFP_DMA32) == 0) {
			page = FUNC5(NULL, 0, req);
			if (page == NULL)
				return (NULL);
		} else {
			vm_paddr_t pmax = (flags & GFP_DMA32) ?
			    BUS_SPACE_MAXADDR_32BIT : BUS_SPACE_MAXADDR;
		retry:
			page = FUNC6(NULL, 0, req,
			    npages, 0, pmax, PAGE_SIZE, 0, VM_MEMATTR_DEFAULT);

			if (page == NULL) {
				if (flags & M_WAITOK) {
					if (!FUNC7(req,
					    npages, 0, pmax, PAGE_SIZE, 0)) {
						FUNC8(NULL);
					}
					flags &= ~M_WAITOK;
					goto retry;
				}
				return (NULL);
			}
		}
		if (flags & M_ZERO) {
			unsigned long x;

			for (x = 0; x != npages; x++) {
				vm_page_t pgo = page + x;

				if ((pgo->flags & PG_ZERO) == 0)
					FUNC4(pgo);
			}
		}
	} else {
		vm_offset_t vaddr;

		vaddr = FUNC2(flags, order);
		if (vaddr == 0)
			return (NULL);

		page = FUNC1(FUNC9((void *)vaddr));

		FUNC0(vaddr == (vm_offset_t)FUNC3(page),
		    ("Page address mismatch"));
	}

	return (page);
}