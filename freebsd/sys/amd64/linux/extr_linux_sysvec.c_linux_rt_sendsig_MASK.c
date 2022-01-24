#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct trapframe {long tf_rsp; int tf_rdi; int tf_rflags; int /*<<< orphan*/  tf_cs; int /*<<< orphan*/  tf_rip; void* tf_rdx; void* tf_rsi; scalar_t__ tf_rax; int /*<<< orphan*/  tf_err; int /*<<< orphan*/  tf_r15; int /*<<< orphan*/  tf_r14; int /*<<< orphan*/  tf_r13; int /*<<< orphan*/  tf_r12; int /*<<< orphan*/  tf_r11; int /*<<< orphan*/  tf_r10; int /*<<< orphan*/  tf_r9; int /*<<< orphan*/  tf_r8; int /*<<< orphan*/  tf_rcx; int /*<<< orphan*/  tf_rbx; int /*<<< orphan*/  tf_rbp; } ;
struct TYPE_8__ {scalar_t__ ss_size; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; int /*<<< orphan*/  td_pcb; TYPE_1__ td_sigstk; struct trapframe* td_frame; struct proc* td_proc; } ;
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigonstack; } ;
struct proc {struct sigacts* p_sigacts; } ;
struct TYPE_10__ {int sc_rdi; long sc_rsp; int sc_rflags; void* sc_cr2; int /*<<< orphan*/  sc_trapno; int /*<<< orphan*/  sc_err; int /*<<< orphan*/  sc_cs; int /*<<< orphan*/  sc_r15; int /*<<< orphan*/  sc_r14; int /*<<< orphan*/  sc_r13; int /*<<< orphan*/  sc_r12; int /*<<< orphan*/  sc_r11; int /*<<< orphan*/  sc_r10; int /*<<< orphan*/  sc_r9; int /*<<< orphan*/  sc_r8; int /*<<< orphan*/  sc_rip; scalar_t__ sc_rax; int /*<<< orphan*/  sc_rcx; int /*<<< orphan*/  sc_rbx; int /*<<< orphan*/  sc_rbp; void* sc_rdx; void* sc_rsi; int /*<<< orphan*/  sc_mask; } ;
struct TYPE_9__ {int /*<<< orphan*/  ss_flags; scalar_t__ ss_size; int /*<<< orphan*/  ss_sp; } ;
struct TYPE_11__ {TYPE_3__ uc_mcontext; TYPE_2__ uc_stack; int /*<<< orphan*/  uc_sigmask; } ;
struct l_rt_sigframe {int /*<<< orphan*/  sf_si; int /*<<< orphan*/  sf_handler; TYPE_4__ sf_sc; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  sig_t ;
typedef  int /*<<< orphan*/  sf ;
typedef  void* register_t ;
struct TYPE_12__ {int ksi_signo; int ksi_code; scalar_t__ ksi_addr; } ;
typedef  TYPE_5__ ksiginfo_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  LINUX_SS_DISABLE ; 
 int /*<<< orphan*/  LINUX_SS_ONSTACK ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  PCB_FULL_IRET ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int PSL_D ; 
 int PSL_T ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SIGILL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int TDP_ALTSTACK ; 
 int /*<<< orphan*/  _ucodesel ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct l_rt_sigframe*,int) ; 
 scalar_t__ FUNC10 (struct l_rt_sigframe*,struct l_rt_sigframe*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  linux_rt_sigcode ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_sendsig ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC17 (long) ; 

__attribute__((used)) static void
FUNC18(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
	struct l_rt_sigframe sf, *sfp;
	struct proc *p;
	struct thread *td;
	struct sigacts *psp;
	caddr_t sp;
	struct trapframe *regs;
	int sig, code;
	int oonstack;

	td = curthread;
	p = td->td_proc;
	FUNC2(p, MA_OWNED);
	sig = ksi->ksi_signo;
	psp = p->p_sigacts;
	code = ksi->ksi_code;
	FUNC12(&psp->ps_mtx, MA_OWNED);
	regs = td->td_frame;
	oonstack = FUNC17(regs->tf_rsp);

	FUNC0(rt_sendsig, "%p, %d, %p, %u",
	    catcher, sig, mask, code);

	/* Allocate space for the signal handler context. */
	if ((td->td_pflags & TDP_ALTSTACK) != 0 && !oonstack &&
	    FUNC5(psp->ps_sigonstack, sig)) {
		sp = (caddr_t)td->td_sigstk.ss_sp + td->td_sigstk.ss_size -
		    sizeof(struct l_rt_sigframe);
	} else
		sp = (caddr_t)regs->tf_rsp - sizeof(struct l_rt_sigframe) - 128;
	/* Align to 16 bytes. */
	sfp = (struct l_rt_sigframe *)((unsigned long)sp & ~0xFul);
	FUNC14(&psp->ps_mtx);

	/* Translate the signal. */
	sig = FUNC6(sig);

	/* Save user context. */
	FUNC9(&sf, sizeof(sf));
	FUNC7(mask, &sf.sf_sc.uc_sigmask);
	FUNC7(mask, &sf.sf_sc.uc_mcontext.sc_mask);

	sf.sf_sc.uc_stack.ss_sp = FUNC4(td->td_sigstk.ss_sp);
	sf.sf_sc.uc_stack.ss_size = td->td_sigstk.ss_size;
	sf.sf_sc.uc_stack.ss_flags = (td->td_pflags & TDP_ALTSTACK)
	    ? ((oonstack) ? LINUX_SS_ONSTACK : 0) : LINUX_SS_DISABLE;
	FUNC3(p);

	sf.sf_sc.uc_mcontext.sc_rdi    = regs->tf_rdi;
	sf.sf_sc.uc_mcontext.sc_rsi    = regs->tf_rsi;
	sf.sf_sc.uc_mcontext.sc_rdx    = regs->tf_rdx;
	sf.sf_sc.uc_mcontext.sc_rbp    = regs->tf_rbp;
	sf.sf_sc.uc_mcontext.sc_rbx    = regs->tf_rbx;
	sf.sf_sc.uc_mcontext.sc_rcx    = regs->tf_rcx;
	sf.sf_sc.uc_mcontext.sc_rax    = regs->tf_rax;
	sf.sf_sc.uc_mcontext.sc_rip    = regs->tf_rip;
	sf.sf_sc.uc_mcontext.sc_rsp    = regs->tf_rsp;
	sf.sf_sc.uc_mcontext.sc_r8     = regs->tf_r8;
	sf.sf_sc.uc_mcontext.sc_r9     = regs->tf_r9;
	sf.sf_sc.uc_mcontext.sc_r10    = regs->tf_r10;
	sf.sf_sc.uc_mcontext.sc_r11    = regs->tf_r11;
	sf.sf_sc.uc_mcontext.sc_r12    = regs->tf_r12;
	sf.sf_sc.uc_mcontext.sc_r13    = regs->tf_r13;
	sf.sf_sc.uc_mcontext.sc_r14    = regs->tf_r14;
	sf.sf_sc.uc_mcontext.sc_r15    = regs->tf_r15;
	sf.sf_sc.uc_mcontext.sc_cs     = regs->tf_cs;
	sf.sf_sc.uc_mcontext.sc_rflags = regs->tf_rflags;
	sf.sf_sc.uc_mcontext.sc_err    = regs->tf_err;
	sf.sf_sc.uc_mcontext.sc_trapno = FUNC8(code);
	sf.sf_sc.uc_mcontext.sc_cr2    = (register_t)ksi->ksi_addr;

	/* Build the argument list for the signal handler. */
	regs->tf_rdi = sig;			/* arg 1 in %rdi */
	regs->tf_rax = 0;
	regs->tf_rsi = (register_t)&sfp->sf_si;	/* arg 2 in %rsi */
	regs->tf_rdx = (register_t)&sfp->sf_sc;	/* arg 3 in %rdx */

	sf.sf_handler = catcher;
	/* Fill in POSIX parts. */
	FUNC11(ksi, &sf.sf_si, sig);

	/* Copy the sigframe out to the user's stack. */
	if (FUNC10(&sf, sfp, sizeof(*sfp)) != 0) {
		FUNC1(p);
		FUNC16(td, SIGILL);
	}

	regs->tf_rsp = (long)sfp;
	regs->tf_rip = linux_rt_sigcode;
	regs->tf_rflags &= ~(PSL_T | PSL_D);
	regs->tf_cs = _ucodesel;
	FUNC15(td->td_pcb, PCB_FULL_IRET);
	FUNC1(p);
	FUNC13(&psp->ps_mtx);
}