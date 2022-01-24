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
typedef  size_t vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  int pml4_entry_t ;
typedef  int pdp_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int* efi_pml4 ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static pt_entry_t *
FUNC8(vm_offset_t va)
{
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	pd_entry_t *pde;
	pt_entry_t *pte;
	vm_page_t m;
	vm_pindex_t pml4_idx, pdp_idx, pd_idx;
	vm_paddr_t mphys;

	pml4_idx = FUNC6(va);
	pml4e = &efi_pml4[pml4_idx];
	if (*pml4e == 0) {
		m = FUNC3();
		mphys =  FUNC2(m);
		*pml4e = mphys | X86_PG_RW | X86_PG_V;
	} else {
		mphys = *pml4e & ~PAGE_MASK;
	}

	pdpe = (pdp_entry_t *)FUNC1(mphys);
	pdp_idx = FUNC5(va);
	pdpe += pdp_idx;
	if (*pdpe == 0) {
		m = FUNC3();
		mphys =  FUNC2(m);
		*pdpe = mphys | X86_PG_RW | X86_PG_V;
	} else {
		mphys = *pdpe & ~PAGE_MASK;
	}

	pde = (pd_entry_t *)FUNC1(mphys);
	pd_idx = FUNC4(va);
	pde += pd_idx;
	if (*pde == 0) {
		m = FUNC3();
		mphys = FUNC2(m);
		*pde = mphys | X86_PG_RW | X86_PG_V;
	} else {
		mphys = *pde & ~PAGE_MASK;
	}

	pte = (pt_entry_t *)FUNC1(mphys);
	pte += FUNC7(va);
	FUNC0(*pte == 0, ("va %#jx *pt %#jx", va, *pte));

	return (pte);
}