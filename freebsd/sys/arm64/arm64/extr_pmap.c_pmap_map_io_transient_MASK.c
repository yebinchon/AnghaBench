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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int M_BESTFIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  kernel_arena ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

boolean_t
FUNC8(vm_page_t page[], vm_offset_t vaddr[], int count,
    boolean_t can_fault)
{
	vm_paddr_t paddr;
	boolean_t needs_mapping;
	int error, i;

	/*
	 * Allocate any KVA space that we need, this is done in a separate
	 * loop to prevent calling vmem_alloc while pinned.
	 */
	needs_mapping = FALSE;
	for (i = 0; i < count; i++) {
		paddr = FUNC3(page[i]);
		if (FUNC4(!FUNC1(paddr))) {
			error = FUNC7(kernel_arena, PAGE_SIZE,
			    M_BESTFIT | M_WAITOK, &vaddr[i]);
			FUNC0(error == 0, ("vmem_alloc failed: %d", error));
			needs_mapping = TRUE;
		} else {
			vaddr[i] = FUNC2(paddr);
		}
	}

	/* Exit early if everything is covered by the DMAP */
	if (!needs_mapping)
		return (FALSE);

	if (!can_fault)
		FUNC6();
	for (i = 0; i < count; i++) {
		paddr = FUNC3(page[i]);
		if (!FUNC1(paddr)) {
			FUNC5(
			   "pmap_map_io_transient: TODO: Map out of DMAP data");
		}
	}

	return (needs_mapping);
}