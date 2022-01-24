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
typedef  int /*<<< orphan*/  db_addr_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int DBGWVR_ADDR_MASK ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int FUNC0 (int) ; 
 int DBG_WB_CTRL_E ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int dbg_watchpoint_num ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

void
FUNC8(void)
{
	uint32_t wcr, len, type;
	uint32_t addr;
	boolean_t is_enabled;
	int i;

	if (!FUNC4()) {
		FUNC2("Architecture does not support HW "
		    "breakpoints/watchpoints\n");
		return;
	}

	FUNC2("\nhardware watchpoints:\n");
	FUNC2("  watch    status        type  len     address              symbol\n");
	FUNC2("  -----  --------  ----------  ---  ----------  ------------------\n");
	for (i = 0; i < dbg_watchpoint_num; i++) {
		wcr = FUNC7(DBG_REG_BASE_WCR, i);
		if ((wcr & DBG_WB_CTRL_E) != 0)
			is_enabled = TRUE;
		else
			is_enabled = FALSE;

		type = FUNC0(wcr);
		len = FUNC1(wcr);
		addr = FUNC7(DBG_REG_BASE_WVR, i) & DBGWVR_ADDR_MASK;
		FUNC2("  %-5d  %-8s  %10s  %3d  0x%08x  ", i,
		    is_enabled ? "enabled" : "disabled",
		    is_enabled ? FUNC6(type) : "",
		    is_enabled ? FUNC5(len) : 0,
		    addr);
		FUNC3((db_addr_t)addr, DB_STGY_ANY);
		FUNC2("\n");
	}
}