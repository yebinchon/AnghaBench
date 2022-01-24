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
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int X86_PG_PS ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int pg_nx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int /*<<< orphan*/  pti_obj ; 

__attribute__((used)) static pt_entry_t *
FUNC9(vm_offset_t va, bool *unwire_pde)
{
	pd_entry_t *pde;
	pt_entry_t *pte;
	vm_page_t m;
	vm_paddr_t mphys;

	FUNC2(pti_obj);

	pde = FUNC7(va);
	if (unwire_pde != NULL) {
		*unwire_pde = true;
		FUNC8(pde);
	}
	if (*pde == 0) {
		m = FUNC5();
		if (*pde != 0) {
			FUNC6(m);
			FUNC0((*pde & X86_PG_PS) == 0);
			mphys = *pde & ~(PAGE_MASK | pg_nx);
		} else {
			mphys = FUNC3(m);
			*pde = mphys | X86_PG_RW | X86_PG_V;
			if (unwire_pde != NULL)
				*unwire_pde = false;
		}
	} else {
		FUNC0((*pde & X86_PG_PS) == 0);
		mphys = *pde & ~(PAGE_MASK | pg_nx);
	}

	pte = (pt_entry_t *)FUNC1(mphys);
	pte += FUNC4(va);

	return (pte);
}