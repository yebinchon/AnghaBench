
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct trapframe {long tf_rsp; int tf_rdi; int tf_rflags; int tf_cs; int tf_rip; void* tf_rdx; void* tf_rsi; scalar_t__ tf_rax; int tf_err; int tf_r15; int tf_r14; int tf_r13; int tf_r12; int tf_r11; int tf_r10; int tf_r9; int tf_r8; int tf_rcx; int tf_rbx; int tf_rbp; } ;
struct TYPE_8__ {scalar_t__ ss_size; scalar_t__ ss_sp; } ;
struct thread {int td_pflags; int td_pcb; TYPE_1__ td_sigstk; struct trapframe* td_frame; struct proc* td_proc; } ;
struct sigacts {int ps_mtx; int ps_sigonstack; } ;
struct proc {struct sigacts* p_sigacts; } ;
struct TYPE_10__ {int sc_rdi; long sc_rsp; int sc_rflags; void* sc_cr2; int sc_trapno; int sc_err; int sc_cs; int sc_r15; int sc_r14; int sc_r13; int sc_r12; int sc_r11; int sc_r10; int sc_r9; int sc_r8; int sc_rip; scalar_t__ sc_rax; int sc_rcx; int sc_rbx; int sc_rbp; void* sc_rdx; void* sc_rsi; int sc_mask; } ;
struct TYPE_9__ {int ss_flags; scalar_t__ ss_size; int ss_sp; } ;
struct TYPE_11__ {TYPE_3__ uc_mcontext; TYPE_2__ uc_stack; int uc_sigmask; } ;
struct l_rt_sigframe {int sf_si; int sf_handler; TYPE_4__ sf_sc; } ;
typedef int sigset_t ;
typedef int sig_t ;
typedef int sf ;
typedef void* register_t ;
struct TYPE_12__ {int ksi_signo; int ksi_code; scalar_t__ ksi_addr; } ;
typedef TYPE_5__ ksiginfo_t ;
typedef scalar_t__ caddr_t ;


 int LINUX_CTR4 (int ,char*,int ,int,int *,int) ;
 int LINUX_SS_DISABLE ;
 int LINUX_SS_ONSTACK ;
 int MA_OWNED ;
 int PCB_FULL_IRET ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int PSL_D ;
 int PSL_T ;
 int PTROUT (scalar_t__) ;
 int SIGILL ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int TDP_ALTSTACK ;
 int _ucodesel ;
 int bsd_to_linux_signal (int) ;
 int bsd_to_linux_sigset (int *,int *) ;
 int bsd_to_linux_trapcode (int) ;
 int bzero (struct l_rt_sigframe*,int) ;
 scalar_t__ copyout (struct l_rt_sigframe*,struct l_rt_sigframe*,int) ;
 struct thread* curthread ;
 int ksiginfo_to_lsiginfo (TYPE_5__*,int *,int) ;
 int linux_rt_sigcode ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int rt_sendsig ;
 int set_pcb_flags (int ,int ) ;
 int sigexit (struct thread*,int ) ;
 int sigonstack (long) ;

__attribute__((used)) static void
linux_rt_sendsig(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
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
 PROC_LOCK_ASSERT(p, MA_OWNED);
 sig = ksi->ksi_signo;
 psp = p->p_sigacts;
 code = ksi->ksi_code;
 mtx_assert(&psp->ps_mtx, MA_OWNED);
 regs = td->td_frame;
 oonstack = sigonstack(regs->tf_rsp);

 LINUX_CTR4(rt_sendsig, "%p, %d, %p, %u",
     catcher, sig, mask, code);


 if ((td->td_pflags & TDP_ALTSTACK) != 0 && !oonstack &&
     SIGISMEMBER(psp->ps_sigonstack, sig)) {
  sp = (caddr_t)td->td_sigstk.ss_sp + td->td_sigstk.ss_size -
      sizeof(struct l_rt_sigframe);
 } else
  sp = (caddr_t)regs->tf_rsp - sizeof(struct l_rt_sigframe) - 128;

 sfp = (struct l_rt_sigframe *)((unsigned long)sp & ~0xFul);
 mtx_unlock(&psp->ps_mtx);


 sig = bsd_to_linux_signal(sig);


 bzero(&sf, sizeof(sf));
 bsd_to_linux_sigset(mask, &sf.sf_sc.uc_sigmask);
 bsd_to_linux_sigset(mask, &sf.sf_sc.uc_mcontext.sc_mask);

 sf.sf_sc.uc_stack.ss_sp = PTROUT(td->td_sigstk.ss_sp);
 sf.sf_sc.uc_stack.ss_size = td->td_sigstk.ss_size;
 sf.sf_sc.uc_stack.ss_flags = (td->td_pflags & TDP_ALTSTACK)
     ? ((oonstack) ? LINUX_SS_ONSTACK : 0) : LINUX_SS_DISABLE;
 PROC_UNLOCK(p);

 sf.sf_sc.uc_mcontext.sc_rdi = regs->tf_rdi;
 sf.sf_sc.uc_mcontext.sc_rsi = regs->tf_rsi;
 sf.sf_sc.uc_mcontext.sc_rdx = regs->tf_rdx;
 sf.sf_sc.uc_mcontext.sc_rbp = regs->tf_rbp;
 sf.sf_sc.uc_mcontext.sc_rbx = regs->tf_rbx;
 sf.sf_sc.uc_mcontext.sc_rcx = regs->tf_rcx;
 sf.sf_sc.uc_mcontext.sc_rax = regs->tf_rax;
 sf.sf_sc.uc_mcontext.sc_rip = regs->tf_rip;
 sf.sf_sc.uc_mcontext.sc_rsp = regs->tf_rsp;
 sf.sf_sc.uc_mcontext.sc_r8 = regs->tf_r8;
 sf.sf_sc.uc_mcontext.sc_r9 = regs->tf_r9;
 sf.sf_sc.uc_mcontext.sc_r10 = regs->tf_r10;
 sf.sf_sc.uc_mcontext.sc_r11 = regs->tf_r11;
 sf.sf_sc.uc_mcontext.sc_r12 = regs->tf_r12;
 sf.sf_sc.uc_mcontext.sc_r13 = regs->tf_r13;
 sf.sf_sc.uc_mcontext.sc_r14 = regs->tf_r14;
 sf.sf_sc.uc_mcontext.sc_r15 = regs->tf_r15;
 sf.sf_sc.uc_mcontext.sc_cs = regs->tf_cs;
 sf.sf_sc.uc_mcontext.sc_rflags = regs->tf_rflags;
 sf.sf_sc.uc_mcontext.sc_err = regs->tf_err;
 sf.sf_sc.uc_mcontext.sc_trapno = bsd_to_linux_trapcode(code);
 sf.sf_sc.uc_mcontext.sc_cr2 = (register_t)ksi->ksi_addr;


 regs->tf_rdi = sig;
 regs->tf_rax = 0;
 regs->tf_rsi = (register_t)&sfp->sf_si;
 regs->tf_rdx = (register_t)&sfp->sf_sc;

 sf.sf_handler = catcher;

 ksiginfo_to_lsiginfo(ksi, &sf.sf_si, sig);


 if (copyout(&sf, sfp, sizeof(*sfp)) != 0) {
  PROC_LOCK(p);
  sigexit(td, SIGILL);
 }

 regs->tf_rsp = (long)sfp;
 regs->tf_rip = linux_rt_sigcode;
 regs->tf_rflags &= ~(PSL_T | PSL_D);
 regs->tf_cs = _ucodesel;
 set_pcb_flags(td->td_pcb, PCB_FULL_IRET);
 PROC_LOCK(p);
 mtx_lock(&psp->ps_mtx);
}
