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
typedef  int vm_offset_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int DMAP_MAX_ADDRESS ; 
 int DMAP_MIN_ADDRESS ; 
 int FUNC0 (int) ; 
 int PAGE_MASK ; 
 int PDRMASK ; 
 int PG_FRAME ; 
 int PG_PS ; 
 int PG_PS_FRAME ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int* FUNC3 (int*,int) ; 
 int* FUNC4 (int) ; 

vm_paddr_t
FUNC5(vm_offset_t va)
{
	pd_entry_t pde;
	vm_paddr_t pa;

	if (va >= DMAP_MIN_ADDRESS && va < DMAP_MAX_ADDRESS) {
		pa = FUNC0(va);
	} else if (FUNC1(va)) {
		pa = FUNC2(va);
	} else {
		pde = *FUNC4(va);
		if (pde & PG_PS) {
			pa = (pde & PG_PS_FRAME) | (va & PDRMASK);
		} else {
			/*
			 * Beware of a concurrent promotion that changes the
			 * PDE at this point!  For example, vtopte() must not
			 * be used to access the PTE because it would use the
			 * new PDE.  It is, however, safe to use the old PDE
			 * because the page table page is preserved by the
			 * promotion.
			 */
			pa = *FUNC3(&pde, va);
			pa = (pa & PG_FRAME) | (va & PAGE_MASK);
		}
	}
	return (pa);
}