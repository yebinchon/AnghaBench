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
typedef  size_t u_int ;
struct trapframe {size_t tf_spsr; int tf_pc; int tf_r0; int tf_r1; int tf_r2; int tf_r3; int tf_r4; int tf_r5; int tf_r6; int tf_r7; int tf_r8; int tf_r9; int tf_r10; int tf_r11; size_t tf_r12; int tf_usr_sp; int tf_usr_lr; int tf_svc_sp; int tf_svc_lr; } ;
struct thread {int dummy; } ;
struct ksig {int dummy; } ;
struct TYPE_2__ {char* desc; } ;

/* Variables and functions */
 size_t FAULT_IMPRECISE ; 
 size_t FAULT_TYPE_MASK ; 
 int /*<<< orphan*/  KDB_WHY_TRAP ; 
 int /*<<< orphan*/  KDB_WHY_UNSET ; 
 int PSR_F ; 
 int PSR_I ; 
 scalar_t__ FUNC0 (struct trapframe*) ; 
 TYPE_1__* data_aborts ; 
 scalar_t__ debugger_on_trap ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct trapframe*,size_t) ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (size_t,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  kdb_why ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (struct trapframe*,size_t) ; 

__attribute__((used)) static int
FUNC8(struct trapframe *tf, u_int fsr, u_int far, struct thread *td,
    struct ksig *ksig)
{
	const char *mode;
#ifdef KDB
	bool handled;
#endif

#ifdef KDB
	if (kdb_active) {
		kdb_reenter();
		return (0);
	}
#endif
#ifdef KDTRACE_HOOKS
	if (!TRAP_USERMODE(tf))	{
		if (dtrace_trap_func != NULL && (*dtrace_trap_func)(tf, far & FAULT_TYPE_MASK))
			return (0);
	}
#endif

	mode = FUNC0(tf) ? "user" : "kernel";

	FUNC1(PSR_I|PSR_F);
	if (td != NULL) {
		FUNC6("Fatal %s mode data abort: '%s'\n", mode,
		    data_aborts[fsr & FAULT_TYPE_MASK].desc);
		FUNC6("trapframe: %p\nFSR=%08x, FAR=", tf, fsr);
		if ((fsr & FAULT_IMPRECISE) == 0)
			FUNC6("%08x, ", far);
		else
			FUNC6("Invalid,  ");
		FUNC6("spsr=%08x\n", tf->tf_spsr);
	} else {
		FUNC6("Fatal %s mode prefetch abort at 0x%08x\n",
		    mode, tf->tf_pc);
		FUNC6("trapframe: %p, spsr=%08x\n", tf, tf->tf_spsr);
	}

	FUNC6("r0 =%08x, r1 =%08x, r2 =%08x, r3 =%08x\n",
	    tf->tf_r0, tf->tf_r1, tf->tf_r2, tf->tf_r3);
	FUNC6("r4 =%08x, r5 =%08x, r6 =%08x, r7 =%08x\n",
	    tf->tf_r4, tf->tf_r5, tf->tf_r6, tf->tf_r7);
	FUNC6("r8 =%08x, r9 =%08x, r10=%08x, r11=%08x\n",
	    tf->tf_r8, tf->tf_r9, tf->tf_r10, tf->tf_r11);
	FUNC6("r12=%08x, ", tf->tf_r12);

	if (FUNC0(tf))
		FUNC6("usp=%08x, ulr=%08x",
		    tf->tf_usr_sp, tf->tf_usr_lr);
	else
		FUNC6("ssp=%08x, slr=%08x",
		    tf->tf_svc_sp, tf->tf_svc_lr);
	FUNC6(", pc =%08x\n\n", tf->tf_pc);

#ifdef KDB
	if (debugger_on_trap) {
		kdb_why = KDB_WHY_TRAP;
		handled = kdb_trap(fsr, 0, tf);
		kdb_why = KDB_WHY_UNSET;
		if (handled)
			return (0);
	}
#endif
	FUNC5("Fatal abort");
	/*NOTREACHED*/
}