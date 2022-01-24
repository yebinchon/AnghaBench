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
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int DBGWVR_ADDR_MASK ; 
 int /*<<< orphan*/  DBG_BKPT_BNT_SLOT ; 
 int /*<<< orphan*/  DBG_BKPT_BT_SLOT ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int DBG_WB_CTRL_E ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ dbg_watchpoint_num ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void
FUNC4(void)
{
	uint32_t wvr, wcr;
	u_int i;

	if (!FUNC0())
		return;

	FUNC1(DBG_BKPT_BT_SLOT);
	FUNC1(DBG_BKPT_BNT_SLOT);

	/* Restore all watchpoints */
	for (i = 0; i < dbg_watchpoint_num; i++) {
		wcr = FUNC2(DBG_REG_BASE_WCR, i);
		wvr = FUNC2(DBG_REG_BASE_WVR, i);
		/* Watchpoint considered not empty if address value is not 0 */
		if ((wvr & DBGWVR_ADDR_MASK) != 0) {
			FUNC3(DBG_REG_BASE_WCR, i,
			    (wcr | DBG_WB_CTRL_E));
		}
	}
}