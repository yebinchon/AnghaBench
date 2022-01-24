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
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int ATTR_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_AP_RW ; 
 int ATTR_AP_RW_BIT ; 
 int ATTR_MASK ; 
 int ATTR_SW_MANAGED ; 
 int L1_OFFSET ; 
 int L2_OFFSET ; 
 int L3_OFFSET ; 
 int MINCORE_INCORE ; 
 int MINCORE_MODIFIED ; 
 int MINCORE_MODIFIED_OTHER ; 
 int MINCORE_REFERENCED ; 
 int MINCORE_REFERENCED_OTHER ; 
 int MINCORE_SUPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int*) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC6 (int) ; 

int
FUNC7(pmap_t pmap, vm_offset_t addr, vm_paddr_t *pap)
{
	pt_entry_t *pte, tpte;
	vm_paddr_t mask, pa;
	int lvl, val;
	bool managed;

	FUNC1(pmap);
	pte = FUNC5(pmap, addr, &lvl);
	if (pte != NULL) {
		tpte = FUNC4(pte);

		switch (lvl) {
		case 3:
			mask = L3_OFFSET;
			break;
		case 2:
			mask = L2_OFFSET;
			break;
		case 1:
			mask = L1_OFFSET;
			break;
		default:
			FUNC3("pmap_mincore: invalid level %d", lvl);
		}

		managed = (tpte & ATTR_SW_MANAGED) != 0;
		val = MINCORE_INCORE;
		if (lvl != 3)
			val |= MINCORE_SUPER;
		if ((managed && FUNC6(tpte)) || (!managed &&
		    (tpte & ATTR_AP_RW_BIT) == FUNC0(ATTR_AP_RW)))
			val |= MINCORE_MODIFIED | MINCORE_MODIFIED_OTHER;
		if ((tpte & ATTR_AF) == ATTR_AF)
			val |= MINCORE_REFERENCED | MINCORE_REFERENCED_OTHER;

		pa = (tpte & ~ATTR_MASK) | (addr & mask);
	} else {
		managed = false;
		val = 0;
	}

	if ((val & (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER)) !=
	    (MINCORE_MODIFIED_OTHER | MINCORE_REFERENCED_OTHER) && managed) {
		*pap = pa;
	}
	FUNC2(pmap);
	return (val);
}