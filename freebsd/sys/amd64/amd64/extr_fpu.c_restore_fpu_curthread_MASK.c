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
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_initial_fpucw; int /*<<< orphan*/  pcb_save; } ;

/* Variables and functions */
 int PCB_FPUINITDONE ; 
 int PCB_USERFPUINITDONE ; 
 scalar_t__ FUNC0 (struct pcb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ __INITIAL_FPUCW__ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_max_ext_state_size ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  fpu_initialstate ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcb*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct thread *td)
{
	struct pcb *pcb;

	/*
	 * Record new context early in case frstor causes a trap.
	 */
	FUNC1(fpcurthread, td);

	FUNC7();
	FUNC4();
	pcb = td->td_pcb;

	if ((pcb->pcb_flags & PCB_FPUINITDONE) == 0) {
		/*
		 * This is the first time this thread has used the FPU or
		 * the PCB doesn't contain a clean FPU state.  Explicitly
		 * load an initial state.
		 *
		 * We prefer to restore the state from the actual save
		 * area in PCB instead of directly loading from
		 * fpu_initialstate, to ignite the XSAVEOPT
		 * tracking engine.
		 */
		FUNC2(fpu_initialstate, pcb->pcb_save,
		    cpu_max_ext_state_size);
		FUNC5(pcb->pcb_save);
		if (pcb->pcb_initial_fpucw != __INITIAL_FPUCW__)
			FUNC3(pcb->pcb_initial_fpucw);
		if (FUNC0(pcb))
			FUNC6(pcb, PCB_FPUINITDONE |
			    PCB_USERFPUINITDONE);
		else
			FUNC6(pcb, PCB_FPUINITDONE);
	} else
		FUNC5(pcb->pcb_save);
}