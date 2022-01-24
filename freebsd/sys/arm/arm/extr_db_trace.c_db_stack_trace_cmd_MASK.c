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
typedef  int uint16_t ;
typedef  int u_int ;
struct unwind_state {int update_mask; int /*<<< orphan*/ * registers; int /*<<< orphan*/  start_pc; } ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ c_db_sym_t ;

/* Variables and functions */
 scalar_t__ C_DB_SYM_NULL ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 size_t FP ; 
 size_t LR ; 
 int PC ; 
 size_t SP ; 
 int /*<<< orphan*/  VM_MIN_KERNEL_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char const**,scalar_t__*) ; 
 int FUNC4 (struct unwind_state*,int) ; 

__attribute__((used)) static void
FUNC5(struct unwind_state *state)
{
	const char *name;
	db_expr_t value;
	db_expr_t offset;
	c_db_sym_t sym;
	u_int reg, i;
	char *sep;
	uint16_t upd_mask;
	bool finished;

	finished = false;
	while (!finished) {
		finished = FUNC4(state, 1);

		/* Print the frame details */
		sym = FUNC2(state->start_pc, DB_STGY_ANY, &offset);
		if (sym == C_DB_SYM_NULL) {
			value = 0;
			name = "(null)";
		} else
			FUNC3(sym, &name, &value);
		FUNC0("%s() at ", name);
		FUNC1(state->start_pc, DB_STGY_PROC);
		FUNC0("\n");
		FUNC0("\t pc = 0x%08x  lr = 0x%08x (", state->start_pc,
		    state->registers[LR]);
		FUNC1(state->registers[LR], DB_STGY_PROC);
		FUNC0(")\n");
		FUNC0("\t sp = 0x%08x  fp = 0x%08x",
		    state->registers[SP], state->registers[FP]);

		/* Don't print the registers we have already printed */
		upd_mask = state->update_mask &
		    ~((1 << SP) | (1 << FP) | (1 << LR) | (1 << PC));
		sep = "\n\t";
		for (i = 0, reg = 0; upd_mask != 0; upd_mask >>= 1, reg++) {
			if ((upd_mask & 1) != 0) {
				FUNC0("%s%sr%d = 0x%08x", sep,
				    (reg < 10) ? " " : "", reg,
				    state->registers[reg]);
				i++;
				if (i == 2) {
					sep = "\n\t";
					i = 0;
				} else
					sep = " ";

			}
		}
		FUNC0("\n");

		if (finished)
			break;

		/*
		 * Stop if directed to do so, or if we've unwound back to the
		 * kernel entry point, or if the unwind function didn't change
		 * anything (to avoid getting stuck in this loop forever).
		 * If the latter happens, it's an indication that the unwind
		 * information is incorrect somehow for the function named in
		 * the last frame printed before you see the unwind failure
		 * message (maybe it needs a STOP_UNWINDING).
		 */
		if (state->registers[PC] < VM_MIN_KERNEL_ADDRESS) {
			FUNC0("Unable to unwind into user mode\n");
			finished = true;
		} else if (state->update_mask == 0) {
			FUNC0("Unwind failure (no registers changed)\n");
			finished = true;
		}
	}
}