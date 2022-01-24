#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct trapframe {int tf_spsr; int tf_pc; int tf_r0; int tf_r1; int tf_r2; int tf_r3; int tf_r4; int tf_r5; int tf_r6; int tf_r7; int tf_r8; int tf_r9; int tf_r10; int tf_r11; int tf_r12; int tf_usr_sp; int tf_usr_lr; int tf_svc_sp; int tf_svc_lr; } ;
struct thread {int dummy; } ;
struct ksig {int dummy; } ;
struct TYPE_2__ {char* desc; } ;

/* Variables and functions */
 int FAULT_EA_IMPREC ; 
 int FSR_WNR ; 
 int /*<<< orphan*/  KDB_WHY_TRAP ; 
 int /*<<< orphan*/  KDB_WHY_UNSET ; 
 int PSR_F ; 
 int PSR_I ; 
 int FUNC0 (struct trapframe*) ; 
 TYPE_1__* aborts ; 
 scalar_t__ debugger_on_trap ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct trapframe*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  kdb_why ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (struct trapframe*,int) ; 

__attribute__((used)) static int
FUNC7(struct trapframe *tf, u_int idx, u_int fsr, u_int far,
    u_int prefetch, struct thread *td, struct ksig *ksig)
{
	bool usermode;
	const char *mode;
	const char *rw_mode;

	usermode = FUNC0(tf);
#ifdef KDTRACE_HOOKS
	if (!usermode) {
		if (dtrace_trap_func != NULL && (*dtrace_trap_func)(tf, far))
			return (0);
	}
#endif

	mode = usermode ? "user" : "kernel";
	rw_mode  = fsr & FSR_WNR ? "write" : "read";
	FUNC1(PSR_I|PSR_F);

	if (td != NULL) {
		FUNC5("Fatal %s mode data abort: '%s' on %s\n", mode,
		    aborts[idx].desc, rw_mode);
		FUNC5("trapframe: %p\nFSR=%08x, FAR=", tf, fsr);
		if (idx != FAULT_EA_IMPREC)
			FUNC5("%08x, ", far);
		else
			FUNC5("Invalid,  ");
		FUNC5("spsr=%08x\n", tf->tf_spsr);
	} else {
		FUNC5("Fatal %s mode prefetch abort at 0x%08x\n",
		    mode, tf->tf_pc);
		FUNC5("trapframe: %p, spsr=%08x\n", tf, tf->tf_spsr);
	}

	FUNC5("r0 =%08x, r1 =%08x, r2 =%08x, r3 =%08x\n",
	    tf->tf_r0, tf->tf_r1, tf->tf_r2, tf->tf_r3);
	FUNC5("r4 =%08x, r5 =%08x, r6 =%08x, r7 =%08x\n",
	    tf->tf_r4, tf->tf_r5, tf->tf_r6, tf->tf_r7);
	FUNC5("r8 =%08x, r9 =%08x, r10=%08x, r11=%08x\n",
	    tf->tf_r8, tf->tf_r9, tf->tf_r10, tf->tf_r11);
	FUNC5("r12=%08x, ", tf->tf_r12);

	if (usermode)
		FUNC5("usp=%08x, ulr=%08x",
		    tf->tf_usr_sp, tf->tf_usr_lr);
	else
		FUNC5("ssp=%08x, slr=%08x",
		    tf->tf_svc_sp, tf->tf_svc_lr);
	FUNC5(", pc =%08x\n\n", tf->tf_pc);

#ifdef KDB
	if (debugger_on_trap) {
		kdb_why = KDB_WHY_TRAP;
		kdb_trap(fsr, 0, tf);
		kdb_why = KDB_WHY_UNSET;
	}
#endif
	FUNC4("Fatal abort");
	/*NOTREACHED*/
}