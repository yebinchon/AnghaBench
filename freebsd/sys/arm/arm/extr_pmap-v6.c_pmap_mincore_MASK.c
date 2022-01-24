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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int vm_offset_t ;
typedef  int pt2_entry_t ;
typedef  int pt1_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int MINCORE_INCORE ; 
 int MINCORE_MODIFIED ; 
 int MINCORE_MODIFIED_OTHER ; 
 int MINCORE_REFERENCED ; 
 int MINCORE_REFERENCED_OTHER ; 
 int MINCORE_SUPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PTE1_A ; 
 int PTE1_OFFSET ; 
 int PTE2_A ; 
 int* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (int*) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

int
FUNC16(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
	pt1_entry_t *pte1p, pte1;
	pt2_entry_t *pte2p, pte2;
	vm_paddr_t pa;
	bool managed;
	int val;

	FUNC0(pmap);
	pte1p = FUNC2(pmap, addr);
	pte1 = FUNC9(pte1p);
	if (FUNC8(pte1)) {
		pa = FUNC15(FUNC10(pte1) | (addr & PTE1_OFFSET));
		managed = FUNC7(pte1);
		val = MINCORE_SUPER | MINCORE_INCORE;
		if (FUNC5(pte1))
			val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
		if (pte1 & PTE1_A)
			val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
	} else if (FUNC6(pte1)) {
		pte2p = FUNC3(pmap, addr);
		pte2 = FUNC13(pte2p);
		FUNC4(pte2p);
		pa = FUNC14(pte2);
		managed = FUNC12(pte2);
		val = MINCORE_INCORE;
		if (FUNC11(pte2))
			val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
		if (pte2 & PTE2_A)
			val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;
	} else {
		managed = false;
		val = 0;
	}
	if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
	    (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) && managed) {
		*pap = pa;
	}
	FUNC1(pmap);
	return (val);
}