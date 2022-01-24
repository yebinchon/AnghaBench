#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int /*<<< orphan*/  pv_list; } ;
typedef  TYPE_4__* pv_entry_t ;
typedef  int pt_entry_t ;
typedef  TYPE_5__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_27__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_31__ {TYPE_1__ pm_stats; } ;
struct TYPE_30__ {int /*<<< orphan*/  pv_va; } ;
struct TYPE_28__ {int pv_gen; int /*<<< orphan*/  pv_list; } ;
struct TYPE_29__ {int oflags; int flags; TYPE_2__ md; } ;

/* Variables and functions */
 int ATTR_AF ; 
 int ATTR_SW_WIRED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int PG_FICTITIOUS ; 
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
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int*,int /*<<< orphan*/ ,struct rwlock**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int* FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,int*) ; 
 int* FUNC18 (TYPE_5__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spglist*) ; 
 struct md_page pv_dummy ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  FUNC22 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC23 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC27 (struct spglist*,int) ; 

void
FUNC28(vm_page_t m)
{
	struct md_page *pvh;
	pv_entry_t pv;
	pmap_t pmap;
	struct rwlock *lock;
	pd_entry_t *pde, tpde;
	pt_entry_t *pte, tpte;
	vm_offset_t va;
	struct spglist free;
	int lvl, pvh_gen, md_gen;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_remove_all: page %p is not managed", m));
	FUNC5(&free);
	lock = FUNC9(m);
	pvh = (m->flags & PG_FICTITIOUS) != 0 ? &pv_dummy :
	    FUNC11(FUNC8(m));
retry:
	FUNC22(lock);
	while ((pv = FUNC6(&pvh->pv_list)) != NULL) {
		pmap = FUNC4(pv);
		if (!FUNC2(pmap)) {
			pvh_gen = pvh->pv_gen;
			FUNC23(lock);
			FUNC1(pmap);
			FUNC22(lock);
			if (pvh_gen != pvh->pv_gen) {
				FUNC23(lock);
				FUNC3(pmap);
				goto retry;
			}
		}
		va = pv->pv_va;
		pte = FUNC18(pmap, va, &lvl);
		FUNC0(pte != NULL,
		    ("pmap_remove_all: no page table entry found"));
		FUNC0(lvl == 2,
		    ("pmap_remove_all: invalid pte level %d", lvl));

		FUNC12(pmap, pte, va, &lock);
		FUNC3(pmap);
	}
	while ((pv = FUNC6(&m->md.pv_list)) != NULL) {
		pmap = FUNC4(pv);
		if (!FUNC2(pmap)) {
			pvh_gen = pvh->pv_gen;
			md_gen = m->md.pv_gen;
			FUNC23(lock);
			FUNC1(pmap);
			FUNC22(lock);
			if (pvh_gen != pvh->pv_gen || md_gen != m->md.pv_gen) {
				FUNC23(lock);
				FUNC3(pmap);
				goto retry;
			}
		}
		FUNC20(pmap, 1);

		pde = FUNC17(pmap, pv->pv_va, &lvl);
		FUNC0(pde != NULL,
		    ("pmap_remove_all: no page directory entry found"));
		FUNC0(lvl == 2,
		    ("pmap_remove_all: invalid pde level %d", lvl));
		tpde = FUNC15(pde);

		pte = FUNC14(pde, pv->pv_va);
		tpte = FUNC16(pte);
		if (tpte & ATTR_SW_WIRED)
			pmap->pm_stats.wired_count--;
		if ((tpte & ATTR_AF) != 0) {
			FUNC13(pmap, pv->pv_va);
			FUNC25(m, PGA_REFERENCED);
		}

		/*
		 * Update the vm_page_t clean and reference bits.
		 */
		if (FUNC19(tpte))
			FUNC26(m);
		FUNC21(pmap, pv->pv_va, tpde, &free);
		FUNC7(&m->md.pv_list, pv, pv_next);
		m->md.pv_gen++;
		FUNC10(pmap, pv);
		FUNC3(pmap);
	}
	FUNC24(m, PGA_WRITEABLE);
	FUNC23(lock);
	FUNC27(&free, true);
}