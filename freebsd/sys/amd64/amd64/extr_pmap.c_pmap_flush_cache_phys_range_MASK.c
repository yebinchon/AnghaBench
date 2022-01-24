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
typedef  int vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int) ; 
 int M_BESTFIT ; 
 int M_WAITOK ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int dmaplimit ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  kernel_arena ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (scalar_t__) ; 

void
FUNC12(vm_paddr_t spa, vm_paddr_t epa, vm_memattr_t mattr)
{
	pt_entry_t *pte;
	vm_offset_t vaddr;
	int error, pte_bits;

	FUNC0((spa & PAGE_MASK) == 0,
	    ("pmap_flush_cache_phys_range: spa not page-aligned"));
	FUNC0((epa & PAGE_MASK) == 0,
	    ("pmap_flush_cache_phys_range: epa not page-aligned"));

	if (spa < dmaplimit) {
		FUNC5(FUNC2(spa), FUNC2(FUNC1(
		    dmaplimit, epa)));
		if (dmaplimit >= epa)
			return;
		spa = dmaplimit;
	}

	pte_bits = FUNC4(kernel_pmap, mattr, 0) | X86_PG_RW |
	    X86_PG_V;
	error = FUNC9(kernel_arena, PAGE_SIZE, M_BESTFIT | M_WAITOK,
	    &vaddr);
	FUNC0(error == 0, ("vmem_alloc failed: %d", error));
	pte = FUNC11(vaddr);
	for (; spa < epa; spa += PAGE_SIZE) {
		FUNC7();
		FUNC6(pte, spa | pte_bits);
		FUNC3(vaddr);
		/* XXXKIB atomic inside flush_cache_range are excessive */
		FUNC5(vaddr, vaddr + PAGE_SIZE);
		FUNC8();
	}
	FUNC10(kernel_arena, vaddr, PAGE_SIZE);
}