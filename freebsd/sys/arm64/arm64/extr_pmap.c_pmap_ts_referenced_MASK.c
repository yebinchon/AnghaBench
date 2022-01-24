#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  uintptr_t vm_paddr_t ;
typedef  uintptr_t vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int /*<<< orphan*/  pv_list; } ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_14__ {uintptr_t pv_va; } ;
struct TYPE_12__ {int pv_gen; int /*<<< orphan*/  pv_list; } ;
struct TYPE_13__ {int oflags; int flags; TYPE_1__ md; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_DESCR_MASK ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int L1_TABLE ; 
 uintptr_t L2_SHIFT ; 
 int L2_TABLE ; 
 int Ln_ENTRIES ; 
 uintptr_t PAGE_SHIFT ; 
 int PG_FICTITIOUS ; 
 struct rwlock* FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int PMAP_TS_REFERENCED_MAX ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct spglist*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 uintptr_t FUNC11 (TYPE_2__*) ; 
 int VPO_UNMANAGED ; 
 struct md_page* FUNC12 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,uintptr_t) ; 
 int* FUNC15 (int*,uintptr_t) ; 
 int* FUNC16 (int*,uintptr_t) ; 
 int FUNC17 (int*) ; 
 int* FUNC18 (scalar_t__,uintptr_t,int*) ; 
 scalar_t__ FUNC19 (int) ; 
 struct md_page pv_dummy ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC20 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC21 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (struct spglist*,int) ; 

int
FUNC24(vm_page_t m)
{
	struct md_page *pvh;
	pv_entry_t pv, pvf;
	pmap_t pmap;
	struct rwlock *lock;
	pd_entry_t *pde, tpde;
	pt_entry_t *pte, tpte;
	vm_offset_t va;
	vm_paddr_t pa;
	int cleared, lvl, md_gen, not_cleared, pvh_gen;
	struct spglist free;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_ts_referenced: page %p is not managed", m));
	FUNC6(&free);
	cleared = 0;
	pa = FUNC11(m);
	lock = FUNC1(pa);
	pvh = (m->flags & PG_FICTITIOUS) != 0 ? &pv_dummy : FUNC12(pa);
	FUNC20(lock);
retry:
	not_cleared = 0;
	if ((pvf = FUNC7(&pvh->pv_list)) == NULL)
		goto small_mappings;
	pv = pvf;
	do {
		if (pvf == NULL)
			pvf = pv;
		pmap = FUNC5(pv);
		if (!FUNC3(pmap)) {
			pvh_gen = pvh->pv_gen;
			FUNC21(lock);
			FUNC2(pmap);
			FUNC20(lock);
			if (pvh_gen != pvh->pv_gen) {
				FUNC4(pmap);
				goto retry;
			}
		}
		va = pv->pv_va;
		pde = FUNC18(pmap, pv->pv_va, &lvl);
		FUNC0(pde != NULL, ("pmap_ts_referenced: no l1 table found"));
		FUNC0(lvl == 1,
		    ("pmap_ts_referenced: invalid pde level %d", lvl));
		tpde = FUNC17(pde);
		FUNC0((tpde & ATTR_DESCR_MASK) == L1_TABLE,
		    ("pmap_ts_referenced: found an invalid l1 table"));
		pte = FUNC15(pde, pv->pv_va);
		tpte = FUNC17(pte);
		if (FUNC19(tpte)) {
			/*
			 * Although "tpte" is mapping a 2MB page, because
			 * this function is called at a 4KB page granularity,
			 * we only update the 4KB page under test.
			 */
			FUNC22(m);
		}

		if ((tpte & ATTR_AF) != 0) {
			/*
			 * Since this reference bit is shared by 512 4KB pages,
			 * it should not be cleared every time it is tested.
			 * Apply a simple "hash" function on the physical page
			 * number, the virtual superpage number, and the pmap
			 * address to select one 4KB page out of the 512 on
			 * which testing the reference bit will result in
			 * clearing that reference bit.  This function is
			 * designed to avoid the selection of the same 4KB page
			 * for every 2MB page mapping.
			 *
			 * On demotion, a mapping that hasn't been referenced
			 * is simply destroyed.  To avoid the possibility of a
			 * subsequent page fault on a demoted wired mapping,
			 * always leave its reference bit set.  Moreover,
			 * since the superpage is wired, the current state of
			 * its reference bit won't affect page replacement.
			 */
			if ((((pa >> PAGE_SHIFT) ^ (pv->pv_va >> L2_SHIFT) ^
			    (uintptr_t)pmap) & (Ln_ENTRIES - 1)) == 0 &&
			    (tpte & ATTR_SW_WIRED) == 0) {
				FUNC13(pte, ATTR_AF);
				FUNC14(pmap, pv->pv_va);
				cleared++;
			} else
				not_cleared++;
		}
		FUNC4(pmap);
		/* Rotate the PV list if it has more than one entry. */
		if (pv != NULL && FUNC9(pv, pv_next) != NULL) {
			FUNC10(&pvh->pv_list, pv, pv_next);
			FUNC8(&pvh->pv_list, pv, pv_next);
			pvh->pv_gen++;
		}
		if (cleared + not_cleared >= PMAP_TS_REFERENCED_MAX)
			goto out;
	} while ((pv = FUNC7(&pvh->pv_list)) != pvf);
small_mappings:
	if ((pvf = FUNC7(&m->md.pv_list)) == NULL)
		goto out;
	pv = pvf;
	do {
		if (pvf == NULL)
			pvf = pv;
		pmap = FUNC5(pv);
		if (!FUNC3(pmap)) {
			pvh_gen = pvh->pv_gen;
			md_gen = m->md.pv_gen;
			FUNC21(lock);
			FUNC2(pmap);
			FUNC20(lock);
			if (pvh_gen != pvh->pv_gen || md_gen != m->md.pv_gen) {
				FUNC4(pmap);
				goto retry;
			}
		}
		pde = FUNC18(pmap, pv->pv_va, &lvl);
		FUNC0(pde != NULL, ("pmap_ts_referenced: no l2 table found"));
		FUNC0(lvl == 2,
		    ("pmap_ts_referenced: invalid pde level %d", lvl));
		tpde = FUNC17(pde);
		FUNC0((tpde & ATTR_DESCR_MASK) == L2_TABLE,
		    ("pmap_ts_referenced: found an invalid l2 table"));
		pte = FUNC16(pde, pv->pv_va);
		tpte = FUNC17(pte);
		if (FUNC19(tpte))
			FUNC22(m);
		if ((tpte & ATTR_AF) != 0) {
			if ((tpte & ATTR_SW_WIRED) == 0) {
				FUNC13(pte, ATTR_AF);
				FUNC14(pmap, pv->pv_va);
				cleared++;
			} else
				not_cleared++;
		}
		FUNC4(pmap);
		/* Rotate the PV list if it has more than one entry. */
		if (pv != NULL && FUNC9(pv, pv_next) != NULL) {
			FUNC10(&m->md.pv_list, pv, pv_next);
			FUNC8(&m->md.pv_list, pv, pv_next);
			m->md.pv_gen++;
		}
	} while ((pv = FUNC7(&m->md.pv_list)) != pvf && cleared +
	    not_cleared < PMAP_TS_REFERENCED_MAX);
out:
	FUNC21(lock);
	FUNC23(&free, true);
	return (cleared + not_cleared);
}