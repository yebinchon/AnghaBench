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
typedef  int vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  scalar_t__ pd_entry_t ;

/* Variables and functions */
 scalar_t__ L1_C_ADDR_MASK ; 
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ L1_S_PROTO ; 
 scalar_t__ L1_S_SHIFT ; 
 int L1_S_SIZE ; 
 scalar_t__ L1_TYPE_C ; 
 scalar_t__ L1_TYPE_MASK ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ L2_L_PROTO ; 
 int L2_L_SIZE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ L2_S_PROTO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PMAP_DOMAIN_KERNEL ; 
#define  PTE_CACHE 130 
 int /*<<< orphan*/  PTE_KERNEL ; 
#define  PTE_NOCACHE 129 
#define  PTE_PAGETABLE 128 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 size_t FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ pte_l1_s_cache_mode ; 
 scalar_t__ pte_l1_s_cache_mode_pt ; 
 scalar_t__ pte_l2_l_cache_mode ; 
 scalar_t__ pte_l2_l_cache_mode_pt ; 
 scalar_t__ pte_l2_s_cache_mode ; 
 scalar_t__ pte_l2_s_cache_mode_pt ; 
 int FUNC12 (int,int) ; 

vm_size_t
FUNC13(vm_offset_t l1pt, vm_offset_t va, vm_offset_t pa,
    vm_size_t size, int prot, int cache)
{
	pd_entry_t *pde = (pd_entry_t *) l1pt;
	pt_entry_t *pte, f1, f2s, f2l;
	vm_size_t resid;
	int i;

	resid = FUNC12(size, PAGE_SIZE);

	if (l1pt == 0)
		FUNC10("pmap_map_chunk: no L1 table provided");

#ifdef VERBOSE_INIT_ARM
	printf("pmap_map_chunk: pa=0x%x va=0x%x size=0x%x resid=0x%x "
	    "prot=0x%x cache=%d\n", pa, va, size, resid, prot, cache);
#endif

	switch (cache) {
	case PTE_NOCACHE:
	default:
		f1 = 0;
		f2l = 0;
		f2s = 0;
		break;

	case PTE_CACHE:
		f1 = pte_l1_s_cache_mode;
		f2l = pte_l2_l_cache_mode;
		f2s = pte_l2_s_cache_mode;
		break;

	case PTE_PAGETABLE:
		f1 = pte_l1_s_cache_mode_pt;
		f2l = pte_l2_l_cache_mode_pt;
		f2s = pte_l2_s_cache_mode_pt;
		break;
	}

	size = resid;

	while (resid > 0) {
		/* See if we can use a section mapping. */
		if (FUNC2(va, pa, resid)) {
#ifdef VERBOSE_INIT_ARM
			printf("S");
#endif
			pde[va >> L1_S_SHIFT] = L1_S_PROTO | pa |
			    FUNC3(PTE_KERNEL, prot) | f1 |
			    FUNC1(PMAP_DOMAIN_KERNEL);
			FUNC7(&pde[va >> L1_S_SHIFT]);
			va += L1_S_SIZE;
			pa += L1_S_SIZE;
			resid -= L1_S_SIZE;
			continue;
		}

		/*
		 * Ok, we're going to use an L2 table.  Make sure
		 * one is actually in the corresponding L1 slot
		 * for the current VA.
		 */
		if ((pde[va >> L1_S_SHIFT] & L1_TYPE_MASK) != L1_TYPE_C)
			FUNC10("pmap_map_chunk: no L2 table for VA 0x%08x", va);

		pte = (pt_entry_t *) FUNC8(
		    pde[FUNC0(va)] & L1_C_ADDR_MASK);
		if (pte == NULL)
			FUNC10("pmap_map_chunk: can't find L2 table for VA"
			    "0x%08x", va);
		/* See if we can use a L2 large page mapping. */
		if (FUNC4(va, pa, resid)) {
#ifdef VERBOSE_INIT_ARM
			printf("L");
#endif
			for (i = 0; i < 16; i++) {
				pte[FUNC9(va) + i] =
				    L2_L_PROTO | pa |
				    FUNC5(PTE_KERNEL, prot) | f2l;
				FUNC7(&pte[FUNC9(va) + i]);
			}
			va += L2_L_SIZE;
			pa += L2_L_SIZE;
			resid -= L2_L_SIZE;
			continue;
		}

		/* Use a small page mapping. */
#ifdef VERBOSE_INIT_ARM
		printf("P");
#endif
		pte[FUNC9(va)] =
		    L2_S_PROTO | pa | FUNC6(PTE_KERNEL, prot) | f2s;
		FUNC7(&pte[FUNC9(va)]);
		va += PAGE_SIZE;
		pa += PAGE_SIZE;
		resid -= PAGE_SIZE;
	}
#ifdef VERBOSE_INIT_ARM
	printf("\n");
#endif
	return (size);

}