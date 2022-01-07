
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint32_t ;
struct trapframe {int* tf_x; int tf_elr; int tf_spsr; } ;
struct TYPE_8__ {scalar_t__ ss_size; scalar_t__ ss_sp; int ss_flags; } ;
struct thread {int td_pflags; struct proc* td_proc; TYPE_2__ td_sigstk; struct trapframe* td_frame; } ;
struct sysentvec {scalar_t__ sv_sigcode_base; scalar_t__* sv_szsigcode; scalar_t__ sv_psstrings; } ;
struct siginfo32 {int dummy; } ;
struct TYPE_7__ {uintptr_t ss_sp; scalar_t__ ss_size; int ss_flags; } ;
struct TYPE_11__ {int mc_vfp_size; void* mc_vfp_ptr; } ;
struct TYPE_9__ {TYPE_1__ uc_stack; int uc_sigmask; TYPE_5__ uc_mcontext; } ;
struct sigframe32 {TYPE_3__ sf_uc; struct siginfo32 sf_si; int sf_vfp; } ;
struct sigacts {int ps_mtx; int ps_sigonstack; } ;
struct proc {struct sysentvec* p_sysent; int p_comm; struct sigacts* p_sigacts; } ;
typedef int sigset_t ;
typedef scalar_t__ sig_t ;
typedef int register_t ;
struct TYPE_10__ {int ksi_signo; int ksi_code; int ksi_info; } ;
typedef TYPE_4__ ksiginfo_t ;
typedef scalar_t__ fp ;


 int CTR2 (int ,char*,struct thread*,struct sigframe32*) ;
 int CTR3 (int ,char*,struct thread*,int,int) ;
 int CTR4 (int ,char*,struct thread*,int ,scalar_t__,int) ;
 int KTR_SIG ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int PSR_T ;
 int SIGILL ;
 scalar_t__ SIGISMEMBER (int ,int) ;
 int SS_DISABLE ;
 int SS_ONSTACK ;
 int TDP_ALTSTACK ;
 scalar_t__ copyout (struct sigframe32*,struct sigframe32*,int) ;
 struct thread* curthread ;
 int get_fpcontext32 (struct thread*,int *) ;
 int get_mcontext32 (struct thread*,TYPE_5__*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sigexit (struct thread*,int ) ;
 int siginfo_to_siginfo32 (int *,struct siginfo32*) ;
 int sigonstack (int) ;

void
freebsd32_sendsig(sig_t catcher, ksiginfo_t *ksi, sigset_t *mask)
{
 struct thread *td;
 struct proc *p;
 struct trapframe *tf;
 struct sigframe32 *fp, frame;
 struct sigacts *psp;
 struct siginfo32 siginfo;
 struct sysentvec *sysent;
 int onstack;
 int sig;
 int code;

 siginfo_to_siginfo32(&ksi->ksi_info, &siginfo);
 td = curthread;
 p = td->td_proc;
 PROC_LOCK_ASSERT(p, MA_OWNED);
 sig = ksi->ksi_signo;
 code = ksi->ksi_code;
 psp = p->p_sigacts;
 mtx_assert(&psp->ps_mtx, MA_OWNED);
 tf = td->td_frame;
 onstack = sigonstack(tf->tf_x[13]);

 CTR4(KTR_SIG, "sendsig: td=%p (%s) catcher=%p sig=%d", td, p->p_comm,
     catcher, sig);


 if ((td->td_pflags & TDP_ALTSTACK) != 0 && !(onstack) &&
     SIGISMEMBER(psp->ps_sigonstack, sig)) {
  fp = (struct sigframe32 *)((uintptr_t)td->td_sigstk.ss_sp +
      td->td_sigstk.ss_size);



 } else
  fp = (struct sigframe32 *)td->td_frame->tf_x[13];


 fp--;


 fp = (struct sigframe32 *)((unsigned long)(fp) &~ (8 - 1));

 get_mcontext32(td, &frame.sf_uc.uc_mcontext, 0);





 frame.sf_uc.uc_mcontext.mc_vfp_size = 0;
 frame.sf_uc.uc_mcontext.mc_vfp_ptr = (uint32_t)((void*)0);

 frame.sf_si = siginfo;
 frame.sf_uc.uc_sigmask = *mask;
 frame.sf_uc.uc_stack.ss_flags = (td->td_pflags & TDP_ALTSTACK )
     ? ((onstack) ? SS_ONSTACK : 0) : SS_DISABLE;
 frame.sf_uc.uc_stack.ss_sp = (uintptr_t)td->td_sigstk.ss_sp;
 frame.sf_uc.uc_stack.ss_size = td->td_sigstk.ss_size;

 mtx_unlock(&psp->ps_mtx);
 PROC_UNLOCK(td->td_proc);


 if (copyout(&frame, fp, sizeof(*fp)) != 0) {

  CTR2(KTR_SIG, "sendsig: sigexit td=%p fp=%p", td, fp);
  PROC_LOCK(p);
  sigexit(td, SIGILL);
 }
 tf->tf_x[0] = sig;
 tf->tf_x[1] = (register_t)&fp->sf_si;
 tf->tf_x[2] = (register_t)&fp->sf_uc;


 tf->tf_x[5] = (register_t)&fp->sf_uc;
 tf->tf_elr = (register_t)catcher;
 tf->tf_x[13] = (register_t)fp;
 sysent = p->p_sysent;
 if (sysent->sv_sigcode_base != 0)
  tf->tf_x[14] = (register_t)sysent->sv_sigcode_base;
 else
  tf->tf_x[14] = (register_t)(sysent->sv_psstrings -
      *(sysent->sv_szsigcode));

 if ((register_t)catcher & 1)
  tf->tf_spsr |= PSR_T;
 else
  tf->tf_spsr &= ~PSR_T;

 CTR3(KTR_SIG, "sendsig: return td=%p pc=%#x sp=%#x", td, tf->tf_x[14],
     tf->tf_x[13]);

 PROC_LOCK(p);
 mtx_lock(&psp->ps_mtx);

}
