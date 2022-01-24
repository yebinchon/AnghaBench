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

/* Variables and functions */
 int ATTR_DESCR_TYPE_BLOCK ; 
 int ATTR_DESCR_TYPE_MASK ; 
 int ATTR_MASK ; 
 int DMAP_MAX_ADDRESS ; 
 int DMAP_MIN_ADDRESS ; 
 int FUNC0 (int) ; 
 int L1_OFFSET ; 
 int L2_OFFSET ; 
 int L3_OFFSET ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int* FUNC2 (int*,int) ; 
 int* FUNC3 (int*,int) ; 
 int FUNC4 (int*) ; 

vm_paddr_t
FUNC5(vm_offset_t va)
{
	pt_entry_t *pte, tpte;

	if (va >= DMAP_MIN_ADDRESS && va < DMAP_MAX_ADDRESS)
		return (FUNC0(va));
	pte = FUNC1(kernel_pmap, va);
	if (pte == NULL)
		return (0);

	/*
	 * A concurrent pmap_update_entry() will clear the entry's valid bit
	 * but leave the rest of the entry unchanged.  Therefore, we treat a
	 * non-zero entry as being valid, and we ignore the valid bit when
	 * determining whether the entry maps a block, page, or table.
	 */
	tpte = FUNC4(pte);
	if (tpte == 0)
		return (0);
	if ((tpte & ATTR_DESCR_TYPE_MASK) == ATTR_DESCR_TYPE_BLOCK)
		return ((tpte & ~ATTR_MASK) | (va & L1_OFFSET));
	pte = FUNC2(&tpte, va);
	tpte = FUNC4(pte);
	if (tpte == 0)
		return (0);
	if ((tpte & ATTR_DESCR_TYPE_MASK) == ATTR_DESCR_TYPE_BLOCK)
		return ((tpte & ~ATTR_MASK) | (va & L2_OFFSET));
	pte = FUNC3(&tpte, va);
	tpte = FUNC4(pte);
	if (tpte == 0)
		return (0);
	return ((tpte & ~ATTR_MASK) | (va & L3_OFFSET));
}