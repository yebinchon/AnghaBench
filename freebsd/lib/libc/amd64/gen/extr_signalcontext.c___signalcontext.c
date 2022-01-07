
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int mc_rsp; int si_signo; int mc_len; void* mc_rip; void* mc_rbx; void* mc_rbp; void* mc_rdx; void* mc_rsi; void* mc_rdi; int mc_ownedfp; int mc_fpformat; } ;
struct TYPE_7__ {TYPE_2__ uc_mcontext; int uc_sigmask; struct TYPE_7__* uc_link; } ;
typedef TYPE_1__ ucontext_t ;
typedef TYPE_2__ siginfo_t ;
typedef void* register_t ;
typedef int mcontext_t ;
typedef int __sighandler_t ;


 int _MC_FPFMT_NODEV ;
 int _MC_FPOWNED_NONE ;
 int abort () ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 int bzero (TYPE_2__*,int) ;
 scalar_t__ sigctx_wrapper ;
 int sigdelset (int *,int) ;

int
__signalcontext(ucontext_t *ucp, int sig, __sighandler_t *func)
{
 uint64_t *args;
 siginfo_t *sig_si;
 ucontext_t *sig_uc;
 uint64_t sp;


 if (ucp == ((void*)0))
  abort();







 sp = (ucp->uc_mcontext.mc_rsp - 128 - sizeof(ucontext_t)) & ~15UL;
 sig_uc = (ucontext_t *)sp;
 bcopy(ucp, sig_uc, sizeof(*sig_uc));
 sp = (sp - sizeof(siginfo_t)) & ~15UL;
 sig_si = (siginfo_t *)sp;
 bzero(sig_si, sizeof(*sig_si));
 sig_si->si_signo = sig;
 sp -= 3 * sizeof(uint64_t);
 args = (uint64_t *)sp;
 args[0] = sig;
 args[1] = (intptr_t)sig_si;
 args[2] = (intptr_t)sig_uc;
 sp -= 16;




 bzero(&ucp->uc_mcontext, sizeof(ucp->uc_mcontext));
 ucp->uc_mcontext.mc_fpformat = _MC_FPFMT_NODEV;
 ucp->uc_mcontext.mc_ownedfp = _MC_FPOWNED_NONE;
 ucp->uc_link = sig_uc;
 sigdelset(&ucp->uc_sigmask, sig);

 ucp->uc_mcontext.mc_len = sizeof(mcontext_t);
 ucp->uc_mcontext.mc_rdi = (register_t)ucp;
 ucp->uc_mcontext.mc_rsi = (register_t)func;
 ucp->uc_mcontext.mc_rdx = (register_t)args;
 ucp->uc_mcontext.mc_rbp = (register_t)sp;
 ucp->uc_mcontext.mc_rbx = (register_t)sp;
 ucp->uc_mcontext.mc_rsp = (register_t)sp;
 ucp->uc_mcontext.mc_rip = (register_t)sigctx_wrapper;
 return (0);
}
