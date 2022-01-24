#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  db_expr_t ;
typedef  TYPE_1__* db_breakpoint_t ;
typedef  void* db_addr_t ;
struct TYPE_3__ {scalar_t__ count; scalar_t__ init_count; } ;
typedef  void* FIXUP_PC_AFTER_BREAK ;

/* Variables and functions */
 int /*<<< orphan*/  BKPT_SKIP ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 void* FUNC3 () ; 
 scalar_t__ STEP_CALLT ; 
 scalar_t__ STEP_CONTINUE ; 
 scalar_t__ STEP_COUNT ; 
 scalar_t__ STEP_INVISIBLE ; 
 scalar_t__ STEP_ONCE ; 
 scalar_t__ STEP_RETURN ; 
 scalar_t__ db_call_depth ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int,int) ; 
 int /*<<< orphan*/  db_inst_count ; 
 scalar_t__ db_loop_count ; 
 scalar_t__ FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ db_run_mode ; 
 scalar_t__ db_sstep_print ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

bool
FUNC16(int type, int code, bool *is_breakpoint, bool *is_watchpoint)
{
	db_addr_t	pc;
	db_breakpoint_t bkpt;

	*is_breakpoint = FUNC0(type, code);
	*is_watchpoint = FUNC2(type, code);
	pc = FUNC3();
	if (FUNC9(pc))
		*is_breakpoint = false;

	FUNC5();
	FUNC4();
	FUNC6();

#ifdef	FIXUP_PC_AFTER_BREAK
	if (*is_breakpoint) {
	    /*
	     * Breakpoint trap.  Fix up the PC if the
	     * machine requires it.
	     */
	    FIXUP_PC_AFTER_BREAK
	    pc = PC_REGS();
	}
#endif

	/*
	 * Now check for a breakpoint at this address.
	 */
	bkpt = FUNC7(pc);
	if (bkpt) {
	    if (--bkpt->count == 0) {
		bkpt->count = bkpt->init_count;
		*is_breakpoint = true;
		return (true);	/* stop here */
	    }
	    return (false);	/* continue the countdown */
	} else if (*is_breakpoint) {
#ifdef BKPT_SKIP
		BKPT_SKIP;
#endif
	}

	*is_breakpoint = false;	/* might be a breakpoint, but not ours */

	/*
	 * If not stepping, then silently ignore single-step traps
	 * (except for clearing the single-step-flag above).
	 *
	 * If stepping, then abort if the trap type is unexpected.
	 * Breakpoints owned by us are expected and were handled above.
	 * Single-steps are expected and are handled below.  All others
	 * are unexpected.
	 *
	 * Only do either of these if the MD layer claims to classify
	 * single-step traps unambiguously (by defining IS_SSTEP_TRAP).
	 * Otherwise, fall through to the bad historical behaviour
	 * given by turning unexpected traps into expected traps: if not
	 * stepping, then expect only breakpoints and stop, and if
	 * stepping, then expect only single-steps and step.
	 */
#ifdef IS_SSTEP_TRAP
	if (db_run_mode == STEP_CONTINUE && IS_SSTEP_TRAP(type, code))
	    return (false);
	if (db_run_mode != STEP_CONTINUE && !IS_SSTEP_TRAP(type, code)) {
	    printf("Stepping aborted\n");
	    return (true);
	}
#endif

	if (db_run_mode == STEP_INVISIBLE) {
	    db_run_mode = STEP_CONTINUE;
	    return (false);	/* continue */
	}
	if (db_run_mode == STEP_COUNT) {
	    return (false); /* continue */
	}
	if (db_run_mode == STEP_ONCE) {
	    if (--db_loop_count > 0) {
		if (db_sstep_print) {
		    FUNC11("\t\t");
		    FUNC10(pc);
		}
		return (false);	/* continue */
	    }
	}
	if (db_run_mode == STEP_RETURN) {
	    /* continue until matching return */
	    db_expr_t ins;

	    ins = FUNC8(pc, sizeof(int), false);
	    if (!FUNC14(ins) &&
		(!FUNC13(ins) || --db_call_depth != 0)) {
		if (db_sstep_print) {
		    if (FUNC12(ins) || FUNC13(ins)) {
			int i;

			FUNC11("[after %6d]     ", db_inst_count);
			for (i = db_call_depth; --i > 0; )
			    FUNC11("  ");
			FUNC10(pc);
		    }
		}
		if (FUNC12(ins))
		    db_call_depth++;
		return (false);	/* continue */
	    }
	}
	if (db_run_mode == STEP_CALLT) {
	    /* continue until call or return */
	    db_expr_t ins;

	    ins = FUNC8(pc, sizeof(int), false);
	    if (!FUNC12(ins) &&
		!FUNC13(ins) &&
		!FUNC14(ins)) {
		return (false);	/* continue */
	    }
	}
	return (true);
}