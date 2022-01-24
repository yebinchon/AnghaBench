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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int DBGPRSR_DLK ; 
 int DBGPRSR_PU ; 
 int /*<<< orphan*/  DBG_REG_BASE_BCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_BVR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int /*<<< orphan*/  DBG_REG_BASE_WVR ; 
 int ENXIO ; 
#define  ID_DFR0_CP_DEBUG_M_V6 131 
#define  ID_DFR0_CP_DEBUG_M_V6_1 130 
#define  ID_DFR0_CP_DEBUG_M_V7 129 
#define  ID_DFR0_CP_DEBUG_M_V7_1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 size_t dbg_breakpoint_num ; 
 int FUNC6 () ; 
 int dbg_model ; 
 scalar_t__ dbg_ossr ; 
 size_t dbg_watchpoint_num ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(void)
{
	u_int cpuid;
	size_t i;
	int err;

	cpuid = FUNC0(cpuid);
	err = 0;

	switch (dbg_model) {
	case ID_DFR0_CP_DEBUG_M_V6:
	case ID_DFR0_CP_DEBUG_M_V6_1: /* fall through */
		/*
		 * Arch needs monitor mode selected and enabled
		 * to be able to access breakpoint/watchpoint registers.
		 */
		err = FUNC6();
		if (err != 0)
			return (err);
		goto vectr_clr;
	case ID_DFR0_CP_DEBUG_M_V7:
		/* Is core power domain powered up? */
		if ((FUNC3() & DBGPRSR_PU) == 0)
			err = ENXIO;

		if (err != 0)
			break;

		if (dbg_ossr)
			goto vectr_clr;
		break;
	case ID_DFR0_CP_DEBUG_M_V7_1:
		/* Is double lock set? */
		if ((FUNC1() & DBGPRSR_DLK) != 0)
			err = ENXIO;

		break;
	default:
		break;
	}

	if (err != 0) {
		FUNC5("Debug facility locked (CPU%d)\n", cpuid);
		return (err);
	}

	/*
	 * DBGOSLAR is always implemented for v7.1 Debug Arch. however is
	 * optional for v7 (depends on OS save and restore support).
	 */
	if (((dbg_model & ID_DFR0_CP_DEBUG_M_V7_1) != 0) || dbg_ossr) {
		/*
		 * Clear OS lock.
		 * Writing any other value than 0xC5ACCESS will unlock.
		 */
		FUNC2(0);
		FUNC8();
	}

vectr_clr:
	/*
	 * After reset we must ensure that DBGVCR has a defined value.
	 * Disable all vector catch events. Safe to use - required in all
	 * implementations.
	 */
	FUNC4(0);
	FUNC8();

	/*
	 * We have limited number of {watch,break}points, each consists of
	 * two registers:
	 * - wcr/bcr regsiter configurates corresponding {watch,break}point
	 *   behaviour
	 * - wvr/bvr register keeps address we are hunting for
	 *
	 * Reset all breakpoints and watchpoints.
	 */
	for (i = 0; i < dbg_watchpoint_num; ++i) {
		FUNC7(DBG_REG_BASE_WCR, i, 0);
		FUNC7(DBG_REG_BASE_WVR, i, 0);
	}

	for (i = 0; i < dbg_breakpoint_num; ++i) {
		FUNC7(DBG_REG_BASE_BCR, i, 0);
		FUNC7(DBG_REG_BASE_BVR, i, 0);
	}

	return (0);
}