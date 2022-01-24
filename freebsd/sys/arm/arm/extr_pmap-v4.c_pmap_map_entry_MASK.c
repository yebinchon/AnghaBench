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
typedef  size_t vm_offset_t ;
typedef  size_t pt_entry_t ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L1_C_ADDR_MASK ; 
 size_t FUNC1 (size_t) ; 
 size_t L1_S_SHIFT ; 
 int L1_TYPE_C ; 
 int L1_TYPE_MASK ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t L2_S_PROTO ; 
 size_t PAGE_MASK ; 
#define  PTE_CACHE 130 
 int /*<<< orphan*/  PTE_KERNEL ; 
#define  PTE_NOCACHE 129 
#define  PTE_PAGETABLE 128 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 scalar_t__ FUNC4 (int) ; 
 size_t FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 size_t pte_l2_s_cache_mode ; 
 size_t pte_l2_s_cache_mode_pt ; 

void
FUNC7(vm_offset_t l1pt, vm_offset_t va, vm_offset_t pa, int prot,
    int cache)
{
	pd_entry_t *pde = (pd_entry_t *) l1pt;
	pt_entry_t fl;
	pt_entry_t *pte;

	FUNC0(((va | pa) & PAGE_MASK) == 0, ("ouin"));

	switch (cache) {
	case PTE_NOCACHE:
	default:
		fl = 0;
		break;

	case PTE_CACHE:
		fl = pte_l2_s_cache_mode;
		break;

	case PTE_PAGETABLE:
		fl = pte_l2_s_cache_mode_pt;
		break;
	}

	if ((pde[va >> L1_S_SHIFT] & L1_TYPE_MASK) != L1_TYPE_C)
		FUNC6("pmap_map_entry: no L2 table for VA 0x%08x", va);

	pte = (pt_entry_t *) FUNC4(pde[FUNC1(va)] & L1_C_ADDR_MASK);

	if (pte == NULL)
		FUNC6("pmap_map_entry: can't find L2 table for VA 0x%08x", va);

	pte[FUNC5(va)] =
	    L2_S_PROTO | pa | FUNC2(PTE_KERNEL, prot) | fl;
	FUNC3(&pte[FUNC5(va)]);
}