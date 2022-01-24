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
struct trapframe {int dummy; } ;
struct TYPE_2__ {int md_spinlock_count; int md_saved_flags; } ;
struct thread {TYPE_1__ td_md; struct pcb* td_frame; struct pcb* td_pcb; } ;
struct pcb {int pcb_r12; int pcb_rsp; int pcb_rbx; int pcb_rip; scalar_t__ pcb_rbp; int /*<<< orphan*/  tf_rflags; struct pcb* pcb_save; } ;
typedef  int register_t ;

/* Variables and functions */
 int PCB_FPUINITDONE ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int PCB_KERNFPU ; 
 int PCB_USERFPUINITDONE ; 
 int PSL_I ; 
 int PSL_KERNEL ; 
 int /*<<< orphan*/  PSL_T ; 
 int /*<<< orphan*/  FUNC0 (struct pcb*,struct pcb*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcb*,int) ; 
 int cpu_max_ext_state_size ; 
 scalar_t__ fork_return ; 
 scalar_t__ fork_trampoline ; 
 struct pcb* FUNC2 (struct pcb*) ; 
 struct pcb* FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcb*) ; 

void
FUNC7(struct thread *td, struct thread *td0)
{
	struct pcb *pcb2;

	pcb2 = td->td_pcb;

	/*
	 * Copy the upcall pcb.  This loads kernel regs.
	 * Those not loaded individually below get their default
	 * values here.
	 */
	FUNC6(td0->td_pcb);
	FUNC0(td0->td_pcb, pcb2, sizeof(*pcb2));
	FUNC1(pcb2, PCB_FPUINITDONE | PCB_USERFPUINITDONE |
	    PCB_KERNFPU);
	pcb2->pcb_save = FUNC2(pcb2);
	FUNC0(FUNC3(td0), pcb2->pcb_save,
	    cpu_max_ext_state_size);
	FUNC5(pcb2, PCB_FULL_IRET);

	/*
	 * Create a new fresh stack for the new thread.
	 */
	FUNC0(td0->td_frame, td->td_frame, sizeof(struct trapframe));

	/* If the current thread has the trap bit set (i.e. a debugger had
	 * single stepped the process to the system call), we need to clear
	 * the trap flag from the new frame. Otherwise, the new thread will
	 * receive a (likely unexpected) SIGTRAP when it executes the first
	 * instruction after returning to userland.
	 */
	td->td_frame->tf_rflags &= ~PSL_T;

	/*
	 * Set registers for trampoline to user mode.  Leave space for the
	 * return address on stack.  These are the kernel mode register values.
	 */
	pcb2->pcb_r12 = (register_t)fork_return;	    /* trampoline arg */
	pcb2->pcb_rbp = 0;
	pcb2->pcb_rsp = (register_t)td->td_frame - sizeof(void *);	/* trampoline arg */
	pcb2->pcb_rbx = (register_t)td;			    /* trampoline arg */
	pcb2->pcb_rip = (register_t)fork_trampoline;
	/*
	 * If we didn't copy the pcb, we'd need to do the following registers:
	 * pcb2->pcb_dr*:	cloned above.
	 * pcb2->pcb_savefpu:	cloned above.
	 * pcb2->pcb_onfault:	cloned above (always NULL here?).
	 * pcb2->pcb_[fg]sbase: cloned above
	 */

	/* Setup to release spin count in fork_exit(). */
	td->td_md.md_spinlock_count = 1;
	td->td_md.md_saved_flags = PSL_KERNEL | PSL_I;
	FUNC4(td);
}