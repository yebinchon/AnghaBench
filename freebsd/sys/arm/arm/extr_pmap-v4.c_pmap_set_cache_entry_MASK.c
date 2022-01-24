#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct l2_bucket {int* l2b_kva; } ;
typedef  TYPE_1__* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  scalar_t__ pmap_t ;
struct TYPE_3__ {scalar_t__ pv_pmap; scalar_t__ pv_va; int pv_flags; } ;

/* Variables and functions */
 int L2_S_CACHE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int*) ; 
 int PVF_WRITE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct l2_bucket* FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int pte_l2_s_cache_mode ; 

__attribute__((used)) static __inline void
FUNC10(pv_entry_t pv, pmap_t pm, vm_offset_t va, int cacheable)
{
	struct l2_bucket *l2b;
	pt_entry_t *ptep, pte;

	l2b = FUNC6(pv->pv_pmap, pv->pv_va);
	ptep = &l2b->l2b_kva[FUNC3(pv->pv_va)];

	if (cacheable == 1) {
		pte = (*ptep & ~L2_S_CACHE_MASK) | pte_l2_s_cache_mode;
		if (FUNC4(pte)) {
			if (FUNC1(pv->pv_flags)) {
				FUNC9(pv->pv_pmap, pv->pv_va);
			} else if (FUNC2(pv->pv_flags)) {
				FUNC8(pv->pv_pmap, pv->pv_va);
			}
		}
	} else {
		pte = *ptep &~ L2_S_CACHE_MASK;
		if ((va != pv->pv_va || pm != pv->pv_pmap) &&
			    FUNC4(pte)) {
			if (FUNC1(pv->pv_flags)) {
				FUNC7(pv->pv_pmap,
					    pv->pv_va, PAGE_SIZE);
				FUNC9(pv->pv_pmap, pv->pv_va);
			} else if (FUNC2(pv->pv_flags)) {
				FUNC5(pv->pv_pmap,
					    pv->pv_va, PAGE_SIZE, TRUE,
					    (pv->pv_flags & PVF_WRITE) == 0);
				FUNC8(pv->pv_pmap,
					    pv->pv_va);
			}
		}
	}
	*ptep = pte;
	FUNC0(pv->pv_pmap, ptep);
}