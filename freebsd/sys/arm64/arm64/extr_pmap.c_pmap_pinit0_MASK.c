#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* pmap_t ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_6__ {scalar_t__ rt_root; } ;
struct TYPE_7__ {int /*<<< orphan*/  pm_cookie; TYPE_1__ pm_root; int /*<<< orphan*/  pm_l0_paddr; int /*<<< orphan*/ * pm_l0; int /*<<< orphan*/  pm_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASID_RESERVED_FOR_PID_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  curpmap ; 
 int /*<<< orphan*/  ttbr0_el1 ; 

void
FUNC6(pmap_t pmap)
{

	FUNC3(pmap);
	FUNC5(&pmap->pm_stats, sizeof(pmap->pm_stats));
	pmap->pm_l0_paddr = FUNC4(ttbr0_el1);
	pmap->pm_l0 = (pd_entry_t *)FUNC2(pmap->pm_l0_paddr);
	pmap->pm_root.rt_root = 0;
	pmap->pm_cookie = FUNC0(ASID_RESERVED_FOR_PID_0, INT_MIN);

	FUNC1(curpmap, pmap);
}