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
typedef  int vm_offset_t ;
struct pv_entry {int dummy; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int L2_L_FRAME ; 
 int L2_L_OFFSET ; 
 int L2_S_FRAME ; 
 int L2_S_OFFSET ; 
 int L2_TYPE_L ; 
 int L2_TYPE_MASK ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 size_t FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct pv_entry*) ; 
 struct l2_bucket* FUNC10 (int /*<<< orphan*/ ,int) ; 
 struct pv_entry* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/ * pvzone ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

void
FUNC15(vm_offset_t va)
{
	struct l2_bucket *l2b;
	pt_entry_t *pte, opte;
	struct pv_entry *pve;
	vm_page_t m;
	vm_offset_t pa;

	l2b = FUNC10(kernel_pmap, va);
	if (!l2b)
		return;
	FUNC0(l2b != NULL, ("No L2 Bucket"));
	pte = &l2b->l2b_kva[FUNC7(va)];
	opte = *pte;
	if (FUNC8(opte)) {
		/* pa = vtophs(va) taken from pmap_extract() */
		if ((opte & L2_TYPE_MASK) == L2_TYPE_L)
			pa = (opte & L2_L_FRAME) | (va & L2_L_OFFSET);
		else
			pa = (opte & L2_S_FRAME) | (va & L2_S_OFFSET);
		/* note: should never have to remove an allocation
		 * before the pvzone is initialized.
		 */
		FUNC12(&pvh_global_lock);
		FUNC1(kernel_pmap);
		if (pvzone != NULL && (m = FUNC14(pa)) &&
		    (pve = FUNC11(m, kernel_pmap, va)))
			FUNC9(pve);
		FUNC2(kernel_pmap);
		FUNC13(&pvh_global_lock);
		va = va & ~PAGE_MASK;
		FUNC4(va, PAGE_SIZE);
		FUNC5(va, PAGE_SIZE);
		FUNC6(va);
		FUNC3();
		*pte = 0;
	}
}