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
 int ATTR_DESCR_MASK ; 
 int ATTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L1_BLOCK ; 
 int L1_OFFSET ; 
 int L2_BLOCK ; 
 int L2_OFFSET ; 
 int L3_OFFSET ; 
 int L3_PAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int,int*) ; 

vm_paddr_t
FUNC5(pmap_t pmap, vm_offset_t va)
{
	pt_entry_t *pte, tpte;
	vm_paddr_t pa;
	int lvl;

	pa = 0;
	FUNC1(pmap);
	/*
	 * Find the block or page map for this virtual address. pmap_pte
	 * will return either a valid block/page entry, or NULL.
	 */
	pte = FUNC4(pmap, va, &lvl);
	if (pte != NULL) {
		tpte = FUNC3(pte);
		pa = tpte & ~ATTR_MASK;
		switch(lvl) {
		case 1:
			FUNC0((tpte & ATTR_DESCR_MASK) == L1_BLOCK,
			    ("pmap_extract: Invalid L1 pte found: %lx",
			    tpte & ATTR_DESCR_MASK));
			pa |= (va & L1_OFFSET);
			break;
		case 2:
			FUNC0((tpte & ATTR_DESCR_MASK) == L2_BLOCK,
			    ("pmap_extract: Invalid L2 pte found: %lx",
			    tpte & ATTR_DESCR_MASK));
			pa |= (va & L2_OFFSET);
			break;
		case 3:
			FUNC0((tpte & ATTR_DESCR_MASK) == L3_PAGE,
			    ("pmap_extract: Invalid L3 pte found: %lx",
			    tpte & ATTR_DESCR_MASK));
			pa |= (va & L3_OFFSET);
			break;
		}
	}
	FUNC2(pmap);
	return (pa);
}