#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct vm_page {int dummy; } ;
struct pv_entry {int /*<<< orphan*/  pv_flags; } ;
struct l2_bucket {scalar_t__* l2b_kva; } ;
typedef  scalar_t__ pt_entry_t ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_10__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_11__ {TYPE_1__ pm_stats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 struct vm_page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ PMAP_REMOVE_CLEAN_LIST_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 size_t FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,struct l2_bucket*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct pv_entry*) ; 
 struct l2_bucket* FUNC20 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 struct pv_entry* FUNC22 (struct vm_page*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

void
FUNC25(pmap_t pm, vm_offset_t sva, vm_offset_t eva)
{
	struct l2_bucket *l2b;
	vm_offset_t next_bucket;
	pt_entry_t *ptep;
	u_int total;
	u_int mappings, is_exec, is_refd;
	int flushall = 0;


	/*
	 * we lock in the pmap => pv_head direction
	 */

	FUNC23(&pvh_global_lock);
	FUNC2(pm);
	total = 0;
	while (sva < eva) {
		/*
		 * Do one L2 bucket's worth at a time.
		 */
		next_bucket = FUNC0(sva);
		if (next_bucket > eva)
			next_bucket = eva;

		l2b = FUNC20(pm, sva);
		if (l2b == NULL) {
			sva = next_bucket;
			continue;
		}

		ptep = &l2b->l2b_kva[FUNC15(sva)];
		mappings = 0;

		while (sva < next_bucket) {
			struct vm_page *pg;
			pt_entry_t pte;
			vm_paddr_t pa;

			pte = *ptep;

			if (pte == 0) {
				/*
				 * Nothing here, move along
				 */
				sva += PAGE_SIZE;
				ptep++;
				continue;
			}

			pm->pm_stats.resident_count--;
			pa = FUNC16(pte);
			is_exec = 0;
			is_refd = 1;

			/*
			 * Update flags. In a number of circumstances,
			 * we could cluster a lot of these and do a
			 * number of sequential pages in one go.
			 */
			if ((pg = FUNC1(pa)) != NULL) {
				struct pv_entry *pve;

				pve = FUNC22(pg, pm, sva);
				if (pve) {
					is_exec = FUNC5(pve->pv_flags);
					is_refd = FUNC6(pve->pv_flags);
					FUNC19(pve);
				}
			}

			if (FUNC17(pte) && FUNC21(pm)) {
				if (total < PMAP_REMOVE_CLEAN_LIST_SIZE) {
					total++;
			   		if (is_exec) {
        					FUNC9(sva,
						    PAGE_SIZE);
						FUNC11(sva,
						    PAGE_SIZE);
						FUNC14(sva);
			   		} else if (is_refd) {
						FUNC7(sva,
						    PAGE_SIZE);
						FUNC11(sva,
						    PAGE_SIZE);
						FUNC12(sva);
					}
				} else if (total == PMAP_REMOVE_CLEAN_LIST_SIZE) {
					/* flushall will also only get set for
					 * for a current pmap
					 */
					FUNC8();
					FUNC10();
					flushall = 1;
					total++;
				}
			}
			*ptep = 0;
			FUNC4(ptep);

			sva += PAGE_SIZE;
			ptep++;
			mappings++;
		}

		FUNC18(pm, l2b, mappings);
	}

	FUNC24(&pvh_global_lock);
	if (flushall)
		FUNC13();
 	FUNC3(pm);
}