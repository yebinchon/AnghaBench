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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pdp_entry_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int X86_PG_PS ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pti_obj ; 

__attribute__((used)) static pd_entry_t *
FUNC8(vm_offset_t va)
{
	pdp_entry_t *pdpe;
	pd_entry_t *pde;
	vm_page_t m;
	vm_pindex_t pd_idx;
	vm_paddr_t mphys;

	FUNC2(pti_obj);

	pdpe = FUNC7(va);
	if (*pdpe == 0) {
		m = FUNC5();
		if (*pdpe != 0) {
			FUNC6(m);
			FUNC0((*pdpe & X86_PG_PS) == 0);
			mphys = *pdpe & ~PAGE_MASK;
		} else {
			mphys =  FUNC3(m);
			*pdpe = mphys | X86_PG_RW | X86_PG_V;
		}
	} else {
		FUNC0((*pdpe & X86_PG_PS) == 0);
		mphys = *pdpe & ~PAGE_MASK;
	}

	pde = (pd_entry_t *)FUNC1(mphys);
	pd_idx = FUNC4(va);
	pde += pd_idx;
	return (pde);
}