#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int* tf_x; void* tf_sp; void* tf_elr; void* tf_lr; } ;
struct TYPE_5__ {int /*<<< orphan*/  ss_flags; scalar_t__ ss_size; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; struct proc* td_proc; TYPE_1__ td_sigstk; struct trapframe* td_frame; } ;
struct sysentvec {scalar_t__ sv_sigcode_base; scalar_t__* sv_szsigcode; scalar_t__ sv_psstrings; } ;
struct TYPE_6__ {TYPE_1__ uc_stack; int /*<<< orphan*/  uc_sigmask; int /*<<< orphan*/  uc_mcontext; } ;
struct sigframe {TYPE_2__ sf_uc; int /*<<< orphan*/  sf_si; } ;
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigonstack; } ;
struct proc {struct sysentvec* p_sysent; int /*<<< orphan*/  p_comm; struct sigacts* p_sigacts; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  scalar_t__ sig_t ;
typedef  void* register_t ;
struct TYPE_7__ {int ksi_signo; int /*<<< orphan*/  ksi_info; } ;
typedef  TYPE_3__ ksiginfo_t ;
typedef  int /*<<< orphan*/  frame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct thread*,struct sigframe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct thread*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct thread*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  KTR_SIG ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  SIGILL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SS_DISABLE ; 
 int /*<<< orphan*/  SS_ONSTACK ; 
 scalar_t__ FUNC7 (struct sigframe*) ; 
 int TDP_ALTSTACK ; 
 int /*<<< orphan*/  FUNC8 (struct sigframe*,int) ; 
 scalar_t__ FUNC9 (struct sigframe*,struct sigframe*,int) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC16 (void*) ; 

void
FUNC17(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
	struct thread *td;
	struct proc *p;
	struct trapframe *tf;
	struct sigframe *fp, frame;
	struct sigacts *psp;
	struct sysentvec *sysent;
	int onstack, sig;

	td = curthread;
	p = td->td_proc;
	FUNC4(p, MA_OWNED);

	sig = ksi->ksi_signo;
	psp = p->p_sigacts;
	FUNC12(&psp->ps_mtx, MA_OWNED);

	tf = td->td_frame;
	onstack = FUNC16(tf->tf_sp);

	FUNC2(KTR_SIG, "sendsig: td=%p (%s) catcher=%p sig=%d", td, p->p_comm,
	    catcher, sig);

	/* Allocate and validate space for the signal handler context. */
	if ((td->td_pflags & TDP_ALTSTACK) != 0 && !onstack &&
	    FUNC6(psp->ps_sigonstack, sig)) {
		fp = (struct sigframe *)((uintptr_t)td->td_sigstk.ss_sp +
		    td->td_sigstk.ss_size);
#if defined(COMPAT_43)
		td->td_sigstk.ss_flags |= SS_ONSTACK;
#endif
	} else {
		fp = (struct sigframe *)td->td_frame->tf_sp;
	}

	/* Make room, keeping the stack aligned */
	fp--;
	fp = (struct sigframe *)FUNC7(fp);

	/* Fill in the frame to copy out */
	FUNC8(&frame, sizeof(frame));
	FUNC11(td, &frame.sf_uc.uc_mcontext, 0);
	FUNC10(td, &frame.sf_uc.uc_mcontext);
	frame.sf_si = ksi->ksi_info;
	frame.sf_uc.uc_sigmask = *mask;
	frame.sf_uc.uc_stack = td->td_sigstk;
	frame.sf_uc.uc_stack.ss_flags = (td->td_pflags & TDP_ALTSTACK) != 0 ?
	    (onstack ? SS_ONSTACK : 0) : SS_DISABLE;
	FUNC14(&psp->ps_mtx);
	FUNC5(td->td_proc);

	/* Copy the sigframe out to the user's stack. */
	if (FUNC9(&frame, fp, sizeof(*fp)) != 0) {
		/* Process has trashed its stack. Kill it. */
		FUNC0(KTR_SIG, "sendsig: sigexit td=%p fp=%p", td, fp);
		FUNC3(p);
		FUNC15(td, SIGILL);
	}

	tf->tf_x[0]= sig;
	tf->tf_x[1] = (register_t)&fp->sf_si;
	tf->tf_x[2] = (register_t)&fp->sf_uc;

	tf->tf_elr = (register_t)catcher;
	tf->tf_sp = (register_t)fp;
	sysent = p->p_sysent;
	if (sysent->sv_sigcode_base != 0)
		tf->tf_lr = (register_t)sysent->sv_sigcode_base;
	else
		tf->tf_lr = (register_t)(sysent->sv_psstrings -
		    *(sysent->sv_szsigcode));

	FUNC1(KTR_SIG, "sendsig: return td=%p pc=%#x sp=%#x", td, tf->tf_elr,
	    tf->tf_sp);

	FUNC3(p);
	FUNC13(&psp->ps_mtx);
}