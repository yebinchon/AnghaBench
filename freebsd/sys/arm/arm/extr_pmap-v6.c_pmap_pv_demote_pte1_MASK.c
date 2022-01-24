#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
struct md_page {int dummy; } ;
typedef  int /*<<< orphan*/ * pv_entry_t ;
typedef  int /*<<< orphan*/  pmap_t ;
struct TYPE_5__ {int /*<<< orphan*/  pv_list; } ;
struct TYPE_6__ {int oflags; TYPE_1__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_2__* FUNC1 (int) ; 
 int PTE1_OFFSET ; 
 scalar_t__ PTE1_SIZE ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VPO_UNMANAGED ; 
 struct md_page* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (struct md_page*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  pv_next ; 
 int /*<<< orphan*/  pvh_global_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(pmap_t pmap, vm_offset_t va, vm_paddr_t pa)
{
	struct md_page *pvh;
	pv_entry_t pv;
	vm_offset_t va_last;
	vm_page_t m;

	FUNC7(&pvh_global_lock, RA_WLOCKED);
	FUNC0((pa & PTE1_OFFSET) == 0,
	    ("pmap_pv_demote_pte1: pa is not 1mpage aligned"));

	/*
	 * Transfer the 1mpage's pv entry for this mapping to the first
	 * page's pv list.
	 */
	pvh = FUNC3(pa);
	va = FUNC6(va);
	pv = FUNC5(pvh, pmap, va);
	FUNC0(pv != NULL, ("pmap_pv_demote_pte1: pv not found"));
	m = FUNC1(pa);
	FUNC2(&m->md.pv_list, pv, pv_next);
	/* Instantiate the remaining NPTE2_IN_PT2 - 1 pv entries. */
	va_last = va + PTE1_SIZE - PAGE_SIZE;
	do {
		m++;
		FUNC0((m->oflags & VPO_UNMANAGED) == 0,
		    ("pmap_pv_demote_pte1: page %p is not managed", m));
		va += PAGE_SIZE;
		FUNC4(pmap, va, m);
	} while (va < va_last);
}