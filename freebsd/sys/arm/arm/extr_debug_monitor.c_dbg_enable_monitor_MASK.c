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

/* Variables and functions */
 int DBGSCR_MDBG_EN ; 
 int ENXIO ; 
#define  ID_DFR0_CP_DEBUG_M_V6 131 
#define  ID_DFR0_CP_DEBUG_M_V6_1 130 
#define  ID_DFR0_CP_DEBUG_M_V7 129 
#define  ID_DFR0_CP_DEBUG_M_V7_1 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int dbg_model ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(void)
{
	uint32_t dbg_dscr;

	/* Already enabled? Just return */
	if (FUNC3())
		return (0);

	dbg_dscr = FUNC2();

	switch (dbg_model) {
	case ID_DFR0_CP_DEBUG_M_V6:
	case ID_DFR0_CP_DEBUG_M_V6_1: /* fall through */
		FUNC0(dbg_dscr | DBGSCR_MDBG_EN);
		break;
	case ID_DFR0_CP_DEBUG_M_V7: /* fall through */
	case ID_DFR0_CP_DEBUG_M_V7_1:
		FUNC1(dbg_dscr | DBGSCR_MDBG_EN);
		break;
	default:
		break;
	}
	FUNC4();

	/* Verify that Monitor mode is set */
	if (FUNC3())
		return (0);

	return (ENXIO);
}