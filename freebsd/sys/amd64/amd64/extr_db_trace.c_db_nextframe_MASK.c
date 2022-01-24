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
struct trapframe {long tf_rsp; long tf_rip; long tf_rbp; int /*<<< orphan*/  tf_rax; int /*<<< orphan*/  tf_trapno; } ;
struct thread {int dummy; } ;
struct amd64_frame {int /*<<< orphan*/  f_frame; int /*<<< orphan*/  f_retaddr; } ;
typedef  int /*<<< orphan*/  db_expr_t ;
typedef  scalar_t__ db_addr_t ;
typedef  int /*<<< orphan*/  c_db_sym_t ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (long) ; 
#define  INTERRUPT 130 
 int NORMAL ; 
#define  SYSCALL 129 
#define  TRAP 128 
 long FUNC1 (long,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC10(struct amd64_frame **fp, db_addr_t *ip, struct thread *td)
{
	struct trapframe *tf;
	int frame_type;
	long rip, rsp, rbp;
	db_expr_t offset;
	c_db_sym_t sym;
	const char *name;

	rip = FUNC1((long) &(*fp)->f_retaddr, 8, FALSE);
	rbp = FUNC1((long) &(*fp)->f_frame, 8, FALSE);

	/*
	 * Figure out frame type.  We look at the address just before
	 * the saved instruction pointer as the saved EIP is after the
	 * call function, and if the function being called is marked as
	 * dead (such as panic() at the end of dblfault_handler()), then
	 * the instruction at the saved EIP will be part of a different
	 * function (syscall() in this example) rather than the one that
	 * actually made the call.
	 */
	frame_type = NORMAL;
	sym = FUNC4(rip - 1, DB_STGY_ANY, &offset);
	FUNC5(sym, &name, NULL);
	if (name != NULL) {
		if (FUNC8(name, "calltrap") == 0 ||
		    FUNC8(name, "fork_trampoline") == 0 ||
		    FUNC8(name, "mchk_calltrap") == 0 ||
		    FUNC8(name, "nmi_calltrap") == 0 ||
		    FUNC8(name, "Xdblfault") == 0)
			frame_type = TRAP;
		else if (FUNC9(name, "Xatpic_intr", 11) == 0 ||
		    FUNC9(name, "Xapic_isr", 9) == 0 ||
		    FUNC8(name, "Xxen_intr_upcall") == 0 ||
		    FUNC8(name, "Xtimerint") == 0 ||
		    FUNC8(name, "Xipi_intr_bitmap_handler") == 0 ||
		    FUNC8(name, "Xcpustop") == 0 ||
		    FUNC8(name, "Xcpususpend") == 0 ||
		    FUNC8(name, "Xrendezvous") == 0)
			frame_type = INTERRUPT;
		else if (FUNC8(name, "Xfast_syscall") == 0 ||
		    FUNC8(name, "Xfast_syscall_pti") == 0 ||
		    FUNC8(name, "fast_syscall_common") == 0)
			frame_type = SYSCALL;
#ifdef COMPAT_FREEBSD32
		else if (strcmp(name, "Xint0x80_syscall") == 0)
			frame_type = SYSCALL;
#endif
	}

	/*
	 * Normal frames need no special processing.
	 */
	if (frame_type == NORMAL) {
		*ip = (db_addr_t) rip;
		*fp = (struct amd64_frame *) rbp;
		return;
	}

	FUNC2(name, rip, &(*fp)->f_frame);

	/*
	 * Point to base of trapframe which is just above the
	 * current frame.
	 */
	tf = (struct trapframe *)((long)*fp + 16);

	if (FUNC0((long) tf)) {
		rsp = tf->tf_rsp;
		rip = tf->tf_rip;
		rbp = tf->tf_rbp;
		switch (frame_type) {
		case TRAP:
			FUNC3("--- trap %#r", tf->tf_trapno);
			break;
		case SYSCALL:
			FUNC3("--- syscall");
			FUNC6(tf->tf_rax, td);
			break;
		case INTERRUPT:
			FUNC3("--- interrupt");
			break;
		default:
			FUNC7("The moon has moved again.");
		}
		FUNC3(", rip = %#lr, rsp = %#lr, rbp = %#lr ---\n", rip,
		    rsp, rbp);
	}

	*ip = (db_addr_t) rip;
	*fp = (struct amd64_frame *) rbp;
}