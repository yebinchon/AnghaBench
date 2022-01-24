#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
struct debug_monitor_state {int dbg_flags; int /*<<< orphan*/ * dbg_wvr; int /*<<< orphan*/ * dbg_wcr; int /*<<< orphan*/ * dbg_bvr; int /*<<< orphan*/ * dbg_bcr; } ;

/* Variables and functions */
 int DBGMON_ENABLED ; 
 int DBGMON_KERNEL ; 
 int DBG_MDSCR_KDE ; 
 int DBG_MDSCR_MDE ; 
 int /*<<< orphan*/  DBG_REG_BASE_BCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_BVR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int dbg_breakpoint_num ; 
 int dbg_watchpoint_num ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct debug_monitor_state kernel_monitor ; 
 int /*<<< orphan*/  mdscr_el1 ; 

void
FUNC4(struct debug_monitor_state *monitor)
{
	uint64_t mdscr;
	int i;

	if (monitor == NULL)
		monitor = &kernel_monitor;

	mdscr = FUNC0(mdscr_el1);
	if ((monitor->dbg_flags & DBGMON_ENABLED) == 0) {
		mdscr &= ~(DBG_MDSCR_MDE | DBG_MDSCR_KDE);
	} else {
		for (i = 0; i < dbg_breakpoint_num; i++) {
			FUNC2(DBG_REG_BASE_BCR, i,
			    monitor->dbg_bcr[i]);
			FUNC2(DBG_REG_BASE_BVR, i,
			    monitor->dbg_bvr[i]);
		}

		for (i = 0; i < dbg_watchpoint_num; i++) {
			FUNC2(DBG_REG_BASE_WCR, i,
			    monitor->dbg_wcr[i]);
			FUNC2(DBG_REG_BASE_WVR, i,
			    monitor->dbg_wvr[i]);
		}
		mdscr |= DBG_MDSCR_MDE;
		if ((monitor->dbg_flags & DBGMON_KERNEL) == DBGMON_KERNEL)
			mdscr |= DBG_MDSCR_KDE;
	}
	FUNC1(mdscr_el1, mdscr);
	FUNC3();
}