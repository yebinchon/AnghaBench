#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int /*<<< orphan*/  pv_list; } ;
typedef  TYPE_4__* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  TYPE_5__* pmap_t ;
typedef  int pd_entry_t ;
struct TYPE_30__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_34__ {TYPE_1__ pm_stats; } ;
struct TYPE_33__ {int /*<<< orphan*/  pv_va; } ;
struct TYPE_31__ {int pv_gen; int /*<<< orphan*/  pv_list; } ;
struct TYPE_32__ {int oflags; int flags; TYPE_2__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
 int PG_PS ; 
 int PG_W ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_5__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct spglist*) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 struct rwlock* FUNC9 (TYPE_3__*) ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_4__*) ; 
 struct md_page* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int*,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_5__*) ; 
 int* FUNC17 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int* FUNC18 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int) ; 
 int FUNC20 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int,struct spglist*) ; 
 int FUNC22 (int*) ; 
 struct md_page pv_dummy ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC23 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC24 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC28 (struct spglist*,int) ; 

void
FUNC29(vm_page_t m)
{
	struct md_page *pvh;
	pv_entry_t pv;
	pmap_t pmap;
	struct rwlock *lock;
	pt_entry_t *pte, tpte, PG_A, PG_M, PG_RW;
	pd_entry_t *pde;
	vm_offset_t va;
	struct spglist free;
	int pvh_gen, md_gen;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_remove_all: page %p is not managed", m));
	FUNC5(&free);
	lock = FUNC9(m);
	pvh = (m->flags & PG_FICTITIOUS) != 0 ? &pv_dummy :
	    FUNC11(FUNC8(m));
retry:
	FUNC23(lock);
	while ((pv = FUNC6(&pvh->pv_list)) != NULL) {
		pmap = FUNC4(pv);
		if (!FUNC2(pmap)) {
			pvh_gen = pvh->pv_gen;
			FUNC24(lock);
			FUNC1(pmap);
			FUNC23(lock);
			if (pvh_gen != pvh->pv_gen) {
				FUNC24(lock);
				FUNC3(pmap);
				goto retry;
			}
		}
		va = pv->pv_va;
		pde = FUNC17(pmap, va);
		(void)FUNC14(pmap, pde, va, &lock);
		FUNC3(pmap);
	}
	while ((pv = FUNC6(&m->md.pv_list)) != NULL) {
		pmap = FUNC4(pv);
		if (!FUNC2(pmap)) {
			pvh_gen = pvh->pv_gen;
			md_gen = m->md.pv_gen;
			FUNC24(lock);
			FUNC1(pmap);
			FUNC23(lock);
			if (pvh_gen != pvh->pv_gen || md_gen != m->md.pv_gen) {
				FUNC24(lock);
				FUNC3(pmap);
				goto retry;
			}
		}
		PG_A = FUNC12(pmap);
		PG_M = FUNC16(pmap);
		PG_RW = FUNC20(pmap);
		FUNC19(pmap, 1);
		pde = FUNC17(pmap, pv->pv_va);
		FUNC0((*pde & PG_PS) == 0, ("pmap_remove_all: found"
		    " a 2mpage in page %p's pv list", m));
		pte = FUNC18(pde, pv->pv_va);
		tpte = FUNC22(pte);
		if (tpte & PG_W)
			pmap->pm_stats.wired_count--;
		if (tpte & PG_A)
			FUNC26(m, PGA_REFERENCED);

		/*
		 * Update the vm_page_t clean and reference bits.
		 */
		if ((tpte & (PG_M | PG_RW)) == (PG_M | PG_RW))
			FUNC27(m);
		FUNC21(pmap, pv->pv_va, *pde, &free);
		FUNC15(pmap, pv->pv_va);
		FUNC7(&m->md.pv_list, pv, pv_next);
		m->md.pv_gen++;
		FUNC10(pmap, pv);
		FUNC3(pmap);
	}
	FUNC25(m, PGA_WRITEABLE);
	FUNC24(lock);
	FUNC13(m);
	FUNC28(&free, true);
}