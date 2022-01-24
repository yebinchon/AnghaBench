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

/* Variables and functions */
 scalar_t__ ID_DFR0_CP_DEBUG_M_V6 ; 
 scalar_t__ ID_DFR0_CP_DEBUG_M_V6_1 ; 
 scalar_t__ ID_DFR0_CP_DEBUG_M_V7 ; 
 scalar_t__ ID_DFR0_CP_DEBUG_M_V7_1 ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  cpuid ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  dbg_breakpoint_num ; 
 int /*<<< orphan*/  dbg_capable_var ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ dbg_model ; 
 int /*<<< orphan*/  dbg_ossr ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  dbg_watchpoint_num ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(void)
{
	int err;

	/* Fetch ARM Debug Architecture model */
	dbg_model = FUNC5();

	if (!FUNC3()) {
		FUNC2("ARM Debug Architecture not supported\n");
		return;
	}

	if (bootverbose) {
		FUNC2("ARM Debug Architecture %s\n",
		    (dbg_model == ID_DFR0_CP_DEBUG_M_V6) ? "v6" :
		    (dbg_model == ID_DFR0_CP_DEBUG_M_V6_1) ? "v6.1" :
		    (dbg_model == ID_DFR0_CP_DEBUG_M_V7) ? "v7" :
		    (dbg_model == ID_DFR0_CP_DEBUG_M_V7_1) ? "v7.1" : "unknown");
	}

	/* Do we have OS Save and Restore mechanism? */
	dbg_ossr = FUNC6();

	/* Find out many breakpoints and watchpoints we can use */
	dbg_watchpoint_num = FUNC7();
	dbg_breakpoint_num = FUNC9();

	if (bootverbose) {
		FUNC2("%d watchpoints and %d breakpoints supported\n",
		    dbg_watchpoint_num, dbg_breakpoint_num);
	}

	err = FUNC8();
	if (err == 0) {
		err = FUNC4();
		if (err == 0) {
			FUNC1(&dbg_capable_var, 1);
			return;
		}
	}

	FUNC2("HW Breakpoints/Watchpoints not enabled on CPU%d\n",
	    FUNC0(cpuid));
}