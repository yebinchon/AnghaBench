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
struct thread {int /*<<< orphan*/  td_tid; } ;
struct TYPE_2__ {int pcb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCB_FPUNOSAVE ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* curpcb ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC5 (char*,struct thread*,int /*<<< orphan*/ ,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8(void)
{
	struct thread *td;

	td = curthread;
	/*
	 * This handler is entered with interrupts enabled, so context
	 * switches may occur before critical_enter() is executed.  If
	 * a context switch occurs, then when we regain control, our
	 * state will have been completely restored.  The CPU may
	 * change underneath us, but the only part of our context that
	 * lives in the CPU is CR0.TS and that will be "restored" by
	 * setting it on the new CPU.
	 */
	FUNC3();

	FUNC0((curpcb->pcb_flags & PCB_FPUNOSAVE) == 0,
	    ("fpudna while in fpu_kern_enter(FPU_KERN_NOCTX)"));
	if (FUNC2(FUNC1(fpcurthread) == td)) {
		/*
		 * Some virtual machines seems to set %cr0.TS at
		 * arbitrary moments.  Silently clear the TS bit
		 * regardless of the eager/lazy FPU context switch
		 * mode.
		 */
		FUNC7();
	} else {
		if (FUNC2(FUNC1(fpcurthread) != NULL)) {
			FUNC5(
		    "fpudna: fpcurthread = %p (%d), curthread = %p (%d)\n",
			    FUNC1(fpcurthread),
			    FUNC1(fpcurthread)->td_tid, td, td->td_tid);
		}
		FUNC6(td);
	}
	FUNC4();
}