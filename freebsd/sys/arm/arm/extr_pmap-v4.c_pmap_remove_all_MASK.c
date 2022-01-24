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
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
struct l2_bucket {scalar_t__* l2b_kva; } ;
typedef  TYPE_4__* pv_entry_t ;
typedef  scalar_t__ pt_entry_t ;
typedef  TYPE_5__* pmap_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_28__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_31__ {TYPE_2__ pm_stats; } ;
struct TYPE_30__ {int pv_flags; TYPE_5__* pv_pmap; int /*<<< orphan*/  pv_va; } ;
struct TYPE_26__ {int /*<<< orphan*/  pv_kva; int /*<<< orphan*/  pv_list; } ;
struct TYPE_29__ {int oflags; TYPE_1__ md; } ;
struct TYPE_27__ {int /*<<< orphan*/  p_vmspace; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,scalar_t__*) ; 
 int PVF_UNMAN ; 
 int /*<<< orphan*/  PVF_WRITE ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_21__* curproc ; 
 TYPE_5__* kernel_pmap ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,struct l2_bucket*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 struct l2_bucket* FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC22 (int /*<<< orphan*/ ) ; 

void
FUNC23(vm_page_t m)
{
	pv_entry_t pv;
	pt_entry_t *ptep;
	struct l2_bucket *l2b;
	boolean_t flush = FALSE;
	pmap_t curpm;
	int flags = 0;

	FUNC0((m->oflags & VPO_UNMANAGED) == 0,
	    ("pmap_remove_all: page %p is not managed", m));
	if (FUNC5(&m->md.pv_list))
		return;
	FUNC19(&pvh_global_lock);

	/*
	 * XXX This call shouldn't exist.  Iterating over the PV list twice,
	 * once in pmap_clearbit() and again below, is both unnecessary and
	 * inefficient.  The below code should itself write back the cache
	 * entry before it destroys the mapping.
	 */
	FUNC10(m, PVF_WRITE);
	curpm = FUNC22(curproc->p_vmspace);
	while ((pv = FUNC6(&m->md.pv_list)) != NULL) {
		if (flush == FALSE && (pv->pv_pmap == curpm ||
		    pv->pv_pmap == kernel_pmap))
			flush = TRUE;

		FUNC1(pv->pv_pmap);
		/*
		 * Cached contents were written-back in pmap_clearbit(),
		 * but we still have to invalidate the cache entry to make
		 * sure stale data are not retrieved when another page will be
		 * mapped under this virtual address.
		 */
		if (FUNC15(pv->pv_pmap)) {
			FUNC7(pv->pv_va, PAGE_SIZE);
			if (FUNC14(pv->pv_pmap, pv->pv_va))
				FUNC8(pv->pv_va, PAGE_SIZE);
		}

		if (pv->pv_flags & PVF_UNMAN) {
			/* remove the pv entry, but do not remove the mapping
			 * and remember this is a kernel mapped page
			 */
			m->md.pv_kva = pv->pv_va;
		} else {
			/* remove the mapping and pv entry */
			l2b = FUNC13(pv->pv_pmap, pv->pv_va);
			FUNC0(l2b != NULL, ("No l2 bucket"));
			ptep = &l2b->l2b_kva[FUNC9(pv->pv_va)];
			*ptep = 0;
			FUNC3(pv->pv_pmap, ptep);
			FUNC11(pv->pv_pmap, l2b, 1);
			pv->pv_pmap->pm_stats.resident_count--;
			flags |= pv->pv_flags;
		}
		FUNC16(m, pv->pv_pmap, pv);
		FUNC2(pv->pv_pmap);
		FUNC12(pv);
	}

	if (flush) {
		if (FUNC4(flags))
			FUNC18(curpm);
		else
			FUNC17(curpm);
	}
	FUNC21(m, PGA_WRITEABLE);
	FUNC20(&pvh_global_lock);
}