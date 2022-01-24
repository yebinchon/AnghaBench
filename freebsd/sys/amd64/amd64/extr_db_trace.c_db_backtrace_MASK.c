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
struct trapframe {int tf_rsp; scalar_t__ tf_rbp; } ;
struct thread {int dummy; } ;
struct amd64_frame {int /*<<< orphan*/  f_retaddr; } ;
typedef  scalar_t__ register_t ;
typedef  scalar_t__ db_expr_t ;
typedef  long db_addr_t ;
typedef  scalar_t__ c_db_sym_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ C_DB_SYM_NULL ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (long) ; 
 scalar_t__ TRUE ; 
 void* FUNC1 (long,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct amd64_frame**,long*,struct thread*) ; 
 int /*<<< orphan*/  db_pager_quit ; 
 int /*<<< orphan*/  FUNC3 (char const*,long,struct amd64_frame*) ; 
 scalar_t__ FUNC4 (long,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, struct trapframe *tf, struct amd64_frame *frame,
    db_addr_t pc, register_t sp, int count)
{
	struct amd64_frame *actframe;
	const char *name;
	db_expr_t offset;
	c_db_sym_t sym;
	boolean_t first;

	if (count == -1)
		count = 1024;

	first = TRUE;
	while (count-- && !db_pager_quit) {
		sym = FUNC4(pc, DB_STGY_ANY, &offset);
		FUNC5(sym, &name, NULL);

		/*
		 * Attempt to determine a (possibly fake) frame that gives
		 * the caller's pc.  It may differ from `frame' if the
		 * current function never sets up a standard frame or hasn't
		 * set one up yet or has just discarded one.  The last two
		 * cases can be guessed fairly reliably for code generated
		 * by gcc.  The first case is too much trouble to handle in
		 * general because the amount of junk on the stack depends
		 * on the pc (the special handling of "calltrap", etc. in
		 * db_nextframe() works because the `next' pc is special).
		 */
		actframe = frame;
		if (first) {
			first = FALSE;
			if (sym == C_DB_SYM_NULL && sp != 0) {
				/*
				 * If a symbol couldn't be found, we've probably
				 * jumped to a bogus location, so try and use
				 * the return address to find our caller.
				 */
				FUNC3(name, pc, NULL);
				pc = FUNC1(sp, 8, FALSE);
				if (FUNC4(pc, DB_STGY_PROC,
				    &offset) == C_DB_SYM_NULL)
					break;
				continue;
			} else if (tf != NULL) {
				int instr;

				instr = FUNC1(pc, 4, FALSE);
				if ((instr & 0xffffffff) == 0xe5894855) {
					/* pushq %rbp; movq %rsp, %rbp */
					actframe = (void *)(tf->tf_rsp - 8);
				} else if ((instr & 0xffffff) == 0xe58948) {
					/* movq %rsp, %rbp */
					actframe = (void *)tf->tf_rsp;
					if (tf->tf_rbp == 0) {
						/* Fake frame better. */
						frame = actframe;
					}
				} else if ((instr & 0xff) == 0xc3) {
					/* ret */
					actframe = (void *)(tf->tf_rsp - 8);
				} else if (offset == 0) {
					/* Probably an assembler symbol. */
					actframe = (void *)(tf->tf_rsp - 8);
				}
			} else if (name != NULL &&
			    FUNC6(name, "fork_trampoline") == 0) {
				/*
				 * Don't try to walk back on a stack for a
				 * process that hasn't actually been run yet.
				 */
				FUNC3(name, pc, actframe);
				break;
			}
		}

		FUNC3(name, pc, actframe);

		if (actframe != frame) {
			/* `frame' belongs to caller. */
			pc = (db_addr_t)
			    FUNC1((long)&actframe->f_retaddr, 8, FALSE);
			continue;
		}

		FUNC2(&frame, &pc, td);

		if (FUNC0((long)pc) && !FUNC0((long)frame)) {
			sym = FUNC4(pc, DB_STGY_ANY, &offset);
			FUNC5(sym, &name, NULL);
			FUNC3(name, pc, frame);
			break;
		}
		if (!FUNC0((long) frame)) {
			break;
		}
	}

	return (0);
}