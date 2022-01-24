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
typedef  int /*<<< orphan*/  pc ;
typedef  int /*<<< orphan*/  db_expr_t ;
typedef  int /*<<< orphan*/  db_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_BKPT_BNT_SLOT ; 
 int /*<<< orphan*/  DBG_BKPT_BT_SLOT ; 
 int /*<<< orphan*/  DBG_REG_BASE_WCR ; 
 int DBG_WB_CTRL_E ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INSN_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dbg_watchpoint_num ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(void)
{
	db_expr_t inst;
	db_addr_t pc, brpc;
	uint32_t wcr;
	u_int i;

	if (!FUNC3())
		return;

	/*
	 * Disable watchpoints, e.g. stepping over watched instruction will
	 * trigger break exception instead of single-step exception and locks
	 * CPU on that instruction for ever.
	 */
	for (i = 0; i < dbg_watchpoint_num; i++) {
		wcr = FUNC5(DBG_REG_BASE_WCR, i);
		if ((wcr & DBG_WB_CTRL_E) != 0) {
			FUNC6(DBG_REG_BASE_WCR, i,
			    (wcr & ~DBG_WB_CTRL_E));
		}
	}

	pc = FUNC0();

	inst = FUNC2(pc, sizeof(pc), FALSE);
	if (FUNC7(inst) || FUNC8(inst) || FUNC9(inst)) {
		brpc = FUNC1(inst, pc);
		FUNC4(brpc, INSN_SIZE, DBG_BKPT_BT_SLOT);
	}
	pc = FUNC10(pc, 0);
	FUNC4(pc, INSN_SIZE, DBG_BKPT_BNT_SLOT);
}