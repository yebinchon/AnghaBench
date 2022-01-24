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
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct l2_bucket {int /*<<< orphan*/ * l2b_kva; } ;
typedef  TYPE_3__* pv_entry_t ;
typedef  int /*<<< orphan*/  pt_entry_t ;
typedef  TYPE_4__* pmap_t ;
struct TYPE_14__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_17__ {TYPE_1__ pm_stats; } ;
struct TYPE_16__ {int pv_flags; } ;
struct TYPE_15__ {int oflags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int PVF_WIRED ; 
 int VPO_UNMANAGED ; 
 size_t FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_2__*,TYPE_4__*,scalar_t__) ; 
 struct l2_bucket* FUNC8 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
	struct l2_bucket *l2b;
	pt_entry_t *ptep, pte;
	pv_entry_t pv;
	vm_offset_t next_bucket;
	vm_page_t m;

	FUNC9(&pvh_global_lock);
	FUNC2(pmap);
	while (sva < eva) {
		next_bucket = FUNC0(sva);
		if (next_bucket > eva)
			next_bucket = eva;
		l2b = FUNC8(pmap, sva);
		if (l2b == NULL) {
			sva = next_bucket;
			continue;
		}
		for (ptep = &l2b->l2b_kva[FUNC4(sva)]; sva < next_bucket;
		    sva += PAGE_SIZE, ptep++) {
			if ((pte = *ptep) == 0 ||
			    (m = FUNC1(FUNC5(pte))) == NULL ||
			    (m->oflags & VPO_UNMANAGED) != 0)
				continue;
			pv = FUNC7(m, pmap, sva);
			if ((pv->pv_flags & PVF_WIRED) == 0)
				FUNC6("pmap_unwire: pv %p isn't wired", pv);
			pv->pv_flags &= ~PVF_WIRED;
			pmap->pm_stats.wired_count--;
		}
	}
	FUNC10(&pvh_global_lock);
 	FUNC3(pmap);
}