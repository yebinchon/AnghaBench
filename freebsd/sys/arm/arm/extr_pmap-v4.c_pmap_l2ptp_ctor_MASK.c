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
typedef  int vm_offset_t ;
struct l2_bucket {int* l2b_kva; } ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int L2_S_CACHE_MASK ; 
 int L2_TABLE_SIZE_REAL ; 
 int PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  kernel_pmap ; 
 size_t FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 struct l2_bucket* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int pte_l2_s_cache_mode_pt ; 

__attribute__((used)) static int
FUNC7(void *mem, int size, void *arg, int flags)
{
#ifndef PMAP_INCLUDE_PTE_SYNC
	struct l2_bucket *l2b;
	pt_entry_t *ptep, pte;

	vm_offset_t va = (vm_offset_t)mem & ~PAGE_MASK;

	/*
	 * The mappings for these page tables were initially made using
	 * pmap_kenter() by the pool subsystem. Therefore, the cache-
	 * mode will not be right for page table mappings. To avoid
	 * polluting the pmap_kenter() code with a special case for
	 * page tables, we simply fix up the cache-mode here if it's not
	 * correct.
	 */
		l2b = FUNC6(kernel_pmap, va);
		ptep = &l2b->l2b_kva[FUNC4(va)];
		pte = *ptep;

		if ((pte & L2_S_CACHE_MASK) != pte_l2_s_cache_mode_pt) {
			/*
			 * Page tables must have the cache-mode set to
			 * Write-Thru.
			 */
			*ptep = (pte & ~L2_S_CACHE_MASK) | pte_l2_s_cache_mode_pt;
			FUNC0(ptep);
			FUNC3(va);
			FUNC2();
		}
#endif
	FUNC5(mem, 0, L2_TABLE_SIZE_REAL);
	FUNC1(mem, L2_TABLE_SIZE_REAL / sizeof(pt_entry_t));
	return (0);
}