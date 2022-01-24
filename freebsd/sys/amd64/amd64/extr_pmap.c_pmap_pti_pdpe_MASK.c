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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pml4_entry_t ;
typedef  int /*<<< orphan*/  pdp_entry_t ;

/* Variables and functions */
 int PAGE_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ pti_finalized ; 
 int /*<<< orphan*/  pti_obj ; 
 int* pti_pml4 ; 

__attribute__((used)) static pdp_entry_t *
FUNC8(vm_offset_t va)
{
	pml4_entry_t *pml4e;
	pdp_entry_t *pdpe;
	vm_page_t m;
	vm_pindex_t pml4_idx;
	vm_paddr_t mphys;

	FUNC1(pti_obj);

	pml4_idx = FUNC5(va);
	pml4e = &pti_pml4[pml4_idx];
	m = NULL;
	if (*pml4e == 0) {
		if (pti_finalized)
			FUNC3("pml4 alloc after finalization\n");
		m = FUNC6();
		if (*pml4e != 0) {
			FUNC7(m);
			mphys = *pml4e & ~PAGE_MASK;
		} else {
			mphys = FUNC2(m);
			*pml4e = mphys | X86_PG_RW | X86_PG_V;
		}
	} else {
		mphys = *pml4e & ~PAGE_MASK;
	}
	pdpe = (pdp_entry_t *)FUNC0(mphys) + FUNC4(va);
	return (pdpe);
}