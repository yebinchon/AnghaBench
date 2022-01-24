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
typedef  size_t u_int ;
struct dbreg {int /*<<< orphan*/ * dbg_wcr; int /*<<< orphan*/ * dbg_wvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PC_DBREG_CMD_LOAD 128 
 int /*<<< orphan*/  PC_DBREG_CMD_NONE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t dbg_watchpoint_num ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbreg ; 
 int /*<<< orphan*/  dbreg_cmd ; 

void
FUNC6(void)
{
	struct dbreg *d;
	u_int i;

	/*
	 * This flag is set on the primary CPU
	 * and its meaning is valid for other CPUs too.
	 */
	if (!FUNC4())
		return;

	FUNC3();

	switch (FUNC0(dbreg_cmd)) {
	case PC_DBREG_CMD_LOAD:
		d = (struct dbreg *)FUNC1(dbreg);

		/* Restore watchpoints */
		for (i = 0; i < dbg_watchpoint_num; i++) {
			FUNC5(DBG_REG_BASE_WVR, i, d->dbg_wvr[i]);
			FUNC5(DBG_REG_BASE_WCR, i, d->dbg_wcr[i]);
		}

		FUNC2(dbreg_cmd, PC_DBREG_CMD_NONE);
		break;
	}
}