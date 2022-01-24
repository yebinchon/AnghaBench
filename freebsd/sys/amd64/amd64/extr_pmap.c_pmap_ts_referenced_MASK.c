#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  uintptr_t vm_paddr_t ;
typedef  uintptr_t vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int /*<<< orphan*/  pv_list; } ;
typedef  TYPE_3__* pv_entry_t ;
typedef  uintptr_t pt_entry_t ;
typedef  scalar_t__ pmap_t ;
typedef  uintptr_t pd_entry_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {uintptr_t pv_va; } ;
struct TYPE_13__ {int pv_gen; int /*<<< orphan*/  pv_list; } ;
struct TYPE_14__ {int oflags; int flags; TYPE_1__ md; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NPTEPG ; 
 uintptr_t PAGE_SHIFT ; 
 uintptr_t PDRSHIFT ; 
 int PG_FICTITIOUS ; 
 uintptr_t PG_PS ; 
 uintptr_t PG_PS_FRAME ; 
 uintptr_t PG_W ; 
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
 scalar_t__ TRUE ; 
 uintptr_t FUNC11 (TYPE_2__*) ; 
 struct rwlock* FUNC12 (TYPE_2__*) ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC13 (uintptr_t*,uintptr_t) ; 
 struct md_page* FUNC14 (uintptr_t) ; 
 uintptr_t FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,uintptr_t*,uintptr_t,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,uintptr_t) ; 
 uintptr_t FUNC18 (scalar_t__) ; 
 uintptr_t* FUNC19 (scalar_t__,uintptr_t) ; 
 uintptr_t* FUNC20 (uintptr_t*,uintptr_t) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,uintptr_t*,uintptr_t,uintptr_t,struct spglist*,struct rwlock**) ; 
 uintptr_t FUNC22 (scalar_t__) ; 
 struct md_page pv_dummy ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC23 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC24 (struct rwlock*) ; 
 scalar_t__ FUNC25 (scalar_t__,uintptr_t) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (struct spglist*,int) ; 

int
FUNC28(vm_page_t m)
{
	struct md_page *pvh;
	pv_entry_t pv, pvf;
	pmap_t pmap;
	struct rwlock *lock;
	pd_entry_t oldpde, *pde;
	pt_entry_t *pte, PG_A, PG_M, PG_RW;
	vm_offset_t va;
	vm_paddr_t pa;
	int cleared, md_gen, not_cleared, pvh_gen;
	struct spglist free;
	boolean_t demoted;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_ts_referenced: page %p is not managed", m));
	FUNC6(&free);
	cleared = 0;
	pa = FUNC11(m);
	lock = FUNC1(pa);
	pvh = (m->flags & PG_FICTITIOUS) != 0 ? &pv_dummy : FUNC14(pa);
	FUNC23(lock);
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
			FUNC24(lock);
			FUNC2(pmap);
			FUNC23(lock);
			if (pvh_gen != pvh->pv_gen) {
				FUNC4(pmap);
				goto retry;
			}
		}
		PG_A = FUNC15(pmap);
		PG_M = FUNC18(pmap);
		PG_RW = FUNC22(pmap);
		va = pv->pv_va;
		pde = FUNC19(pmap, pv->pv_va);
		oldpde = *pde;
		if ((oldpde & (PG_M | PG_RW)) == (PG_M | PG_RW)) {
			/*
			 * Although "oldpde" is mapping a 2MB page, because
			 * this function is called at a 4KB page granularity,
			 * we only update the 4KB page under test.
			 */
			FUNC26(m);
		}
		if ((oldpde & PG_A) != 0) {
			/*
			 * Since this reference bit is shared by 512 4KB
			 * pages, it should not be cleared every time it is
			 * tested.  Apply a simple "hash" function on the
			 * physical page number, the virtual superpage number,
			 * and the pmap address to select one 4KB page out of
			 * the 512 on which testing the reference bit will
			 * result in clearing that reference bit.  This
			 * function is designed to avoid the selection of the
			 * same 4KB page for every 2MB page mapping.
			 *
			 * On demotion, a mapping that hasn't been referenced
			 * is simply destroyed.  To avoid the possibility of a
			 * subsequent page fault on a demoted wired mapping,
			 * always leave its reference bit set.  Moreover,
			 * since the superpage is wired, the current state of
			 * its reference bit won't affect page replacement.
			 */
			if ((((pa >> PAGE_SHIFT) ^ (pv->pv_va >> PDRSHIFT) ^
			    (uintptr_t)pmap) & (NPTEPG - 1)) == 0 &&
			    (oldpde & PG_W) == 0) {
				if (FUNC25(pmap, oldpde)) {
					FUNC13(pde, PG_A);
					FUNC17(pmap, pv->pv_va);
					demoted = FALSE;
				} else if (FUNC16(pmap, pde,
				    pv->pv_va, &lock)) {
					/*
					 * Remove the mapping to a single page
					 * so that a subsequent access may
					 * repromote.  Since the underlying
					 * page table page is fully populated,
					 * this removal never frees a page
					 * table page.
					 */
					demoted = TRUE;
					va += FUNC11(m) - (oldpde &
					    PG_PS_FRAME);
					pte = FUNC20(pde, va);
					FUNC21(pmap, pte, va, *pde,
					    NULL, &lock);
					FUNC17(pmap, va);
				} else
					demoted = TRUE;

				if (demoted) {
					/*
					 * The superpage mapping was removed
					 * entirely and therefore 'pv' is no
					 * longer valid.
					 */
					if (pvf == pv)
						pvf = NULL;
					pv = NULL;
				}
				cleared++;
				FUNC0(lock == FUNC12(m),
				    ("inconsistent pv lock %p %p for page %p",
				    lock, FUNC12(m), m));
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
			FUNC24(lock);
			FUNC2(pmap);
			FUNC23(lock);
			if (pvh_gen != pvh->pv_gen || md_gen != m->md.pv_gen) {
				FUNC4(pmap);
				goto retry;
			}
		}
		PG_A = FUNC15(pmap);
		PG_M = FUNC18(pmap);
		PG_RW = FUNC22(pmap);
		pde = FUNC19(pmap, pv->pv_va);
		FUNC0((*pde & PG_PS) == 0,
		    ("pmap_ts_referenced: found a 2mpage in page %p's pv list",
		    m));
		pte = FUNC20(pde, pv->pv_va);
		if ((*pte & (PG_M | PG_RW)) == (PG_M | PG_RW))
			FUNC26(m);
		if ((*pte & PG_A) != 0) {
			if (FUNC25(pmap, *pte)) {
				FUNC13(pte, PG_A);
				FUNC17(pmap, pv->pv_va);
				cleared++;
			} else if ((*pte & PG_W) == 0) {
				/*
				 * Wired pages cannot be paged out so
				 * doing accessed bit emulation for
				 * them is wasted effort. We do the
				 * hard work for unwired pages only.
				 */
				FUNC21(pmap, pte, pv->pv_va,
				    *pde, &free, &lock);
				FUNC17(pmap, pv->pv_va);
				cleared++;
				if (pvf == pv)
					pvf = NULL;
				pv = NULL;
				FUNC0(lock == FUNC12(m),
				    ("inconsistent pv lock %p %p for page %p",
				    lock, FUNC12(m), m));
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
	FUNC24(lock);
	FUNC27(&free, true);
	return (cleared + not_cleared);
}