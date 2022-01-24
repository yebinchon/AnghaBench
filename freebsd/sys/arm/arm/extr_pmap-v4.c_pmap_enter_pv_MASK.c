#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int u_int ;
struct TYPE_9__ {scalar_t__ pv_kva; int pvh_attrs; int /*<<< orphan*/  pv_list; } ;
struct vm_page {TYPE_1__ md; } ;
struct pv_entry {scalar_t__ pv_va; int pv_flags; TYPE_3__* pv_pmap; } ;
typedef  TYPE_3__* pmap_t ;
struct TYPE_10__ {int /*<<< orphan*/  wired_count; } ;
struct TYPE_11__ {TYPE_2__ pm_stats; int /*<<< orphan*/  pm_pvlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int PVF_MOD ; 
 int PVF_REF ; 
 int PVF_UNMAN ; 
 int PVF_WIRED ; 
 int PVF_WRITE ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pv_entry*,int /*<<< orphan*/ ) ; 
 TYPE_3__* kernel_pmap ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct pv_entry* FUNC5 () ; 
 int /*<<< orphan*/  pv_list ; 
 int /*<<< orphan*/  pv_plist ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct vm_page *pg, struct pv_entry *pve, pmap_t pm,
    vm_offset_t va, u_int flags)
{

	FUNC6(&pvh_global_lock, RA_WLOCKED);
	FUNC0(pm);
	if (pg->md.pv_kva != 0) {
		pve->pv_pmap = kernel_pmap;
		pve->pv_va = pg->md.pv_kva;
		pve->pv_flags = PVF_WRITE | PVF_UNMAN;
		if (pm != kernel_pmap)
			FUNC1(kernel_pmap);
		FUNC3(&pg->md.pv_list, pve, pv_list);
		FUNC3(&kernel_pmap->pm_pvlist, pve, pv_plist);
		if (pm != kernel_pmap)
			FUNC2(kernel_pmap);
		pg->md.pv_kva = 0;
		if ((pve = FUNC5()) == NULL)
			FUNC4("pmap_kenter_pv: no pv entries");
	}
	pve->pv_pmap = pm;
	pve->pv_va = va;
	pve->pv_flags = flags;
	FUNC3(&pg->md.pv_list, pve, pv_list);
	FUNC3(&pm->pm_pvlist, pve, pv_plist);
	pg->md.pvh_attrs |= flags & (PVF_REF | PVF_MOD);
	if (pve->pv_flags & PVF_WIRED)
		++pm->pm_stats.wired_count;
	FUNC7(pg, PGA_REFERENCED);
}