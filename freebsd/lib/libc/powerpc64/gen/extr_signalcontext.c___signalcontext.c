
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_8__ {unsigned long* mc_gpr; int si_signo; int mc_len; void* mc_srr0; int mc_vers; } ;
struct TYPE_7__ {TYPE_2__ uc_mcontext; int uc_sigmask; struct TYPE_7__* uc_link; } ;
typedef TYPE_1__ ucontext_t ;
struct __mcontext {int dummy; } ;
typedef TYPE_2__ siginfo_t ;
typedef int __sighandler_t ;


 int _MC_VERSION ;
 int abort () ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 int bzero (TYPE_2__*,int) ;
 scalar_t__ ctx_wrapper ;
 int sigdelset (int *,int) ;

int
__signalcontext(ucontext_t *ucp, int sig, __sighandler_t *func)
{
 siginfo_t *sig_si;
 ucontext_t *sig_uc;
 uintptr_t sp;


 if (ucp == ((void*)0))
  abort();




 sp = (ucp->uc_mcontext.mc_gpr[1] - sizeof(ucontext_t)) & ~15UL;
 sig_uc = (ucontext_t *)sp;
 bcopy(ucp, sig_uc, sizeof(*sig_uc));
 sp = (sp - sizeof(siginfo_t)) & ~15UL;
 sig_si = (siginfo_t *)sp;
 bzero(sig_si, sizeof(*sig_si));
 sig_si->si_signo = sig;




 sp -= 6*sizeof(uint64_t);
 sp &= ~15UL;




 bzero(&ucp->uc_mcontext, sizeof(ucp->uc_mcontext));
 ucp->uc_link = sig_uc;
 sigdelset(&ucp->uc_sigmask, sig);

 ucp->uc_mcontext.mc_vers = _MC_VERSION;
 ucp->uc_mcontext.mc_len = sizeof(struct __mcontext);
 ucp->uc_mcontext.mc_srr0 = (uint64_t) ctx_wrapper;
 ucp->uc_mcontext.mc_gpr[1] = (uint64_t) sp;
 ucp->uc_mcontext.mc_gpr[3] = (uint64_t) func;
 ucp->uc_mcontext.mc_gpr[4] = (uint64_t) sig;
 ucp->uc_mcontext.mc_gpr[5] = (uint64_t) sig_si;
 ucp->uc_mcontext.mc_gpr[6] = (uint64_t) sig_uc;

 return (0);
}
