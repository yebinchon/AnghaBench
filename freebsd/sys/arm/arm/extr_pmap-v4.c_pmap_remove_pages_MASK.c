#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct pv_entry {int pv_flags; int /*<<< orphan*/  pv_va; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef  int pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
struct TYPE_14__ {int /*<<< orphan*/  resident_count; } ;
struct TYPE_17__ {TYPE_1__ pm_stats; int /*<<< orphan*/  pm_pvlist; } ;
struct TYPE_15__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_16__ {TYPE_2__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ KERNBASE ; 
 int L2_S_FRAME ; 
 int /*<<< orphan*/  PGA_WRITEABLE ; 
 TYPE_3__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int PVF_UNMAN ; 
 int PVF_WIRED ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct pv_entry* FUNC6 (int /*<<< orphan*/ *) ; 
 struct pv_entry* FUNC7 (struct pv_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,struct l2_bucket*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pv_entry*) ; 
 struct l2_bucket* FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,TYPE_4__*,struct pv_entry*) ; 
 int /*<<< orphan*/  pv_plist ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void
FUNC20(pmap_t pmap)
{
	struct pv_entry *pv, *npv;
	struct l2_bucket *l2b = NULL;
	vm_page_t m;
	pt_entry_t *pt;

	FUNC17(&pvh_global_lock);
	FUNC2(pmap);
	FUNC9();
	FUNC10();
	for (pv = FUNC6(&pmap->pm_pvlist); pv; pv = npv) {
		if (pv->pv_flags & PVF_WIRED || pv->pv_flags & PVF_UNMAN) {
			/* Cannot remove wired or unmanaged pages now. */
			npv = FUNC7(pv, pv_plist);
			continue;
		}
		pmap->pm_stats.resident_count--;
		l2b = FUNC15(pmap, pv->pv_va);
		FUNC0(l2b != NULL, ("No L2 bucket in pmap_remove_pages"));
		pt = &l2b->l2b_kva[FUNC12(pv->pv_va)];
		m = FUNC1(*pt & L2_S_FRAME);
		FUNC0((vm_offset_t)m >= KERNBASE, ("Trying to access non-existent page va %x pte %x", pv->pv_va, *pt));
		*pt = 0;
		FUNC4(pt);
		npv = FUNC7(pv, pv_plist);
		FUNC16(m, pmap, pv);
		if (FUNC5(&m->md.pv_list))
			FUNC19(m, PGA_WRITEABLE);
		FUNC14(pv);
		FUNC13(pmap, l2b, 1);
	}
	FUNC18(&pvh_global_lock);
	FUNC11();
	FUNC8();
	FUNC3(pmap);
}