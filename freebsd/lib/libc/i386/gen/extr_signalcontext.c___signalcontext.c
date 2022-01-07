
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int mc_eflags; void* mc_eip; void* mc_esp; void* mc_esi; } ;
struct TYPE_10__ {int uc_sigmask; int * uc_link; TYPE_3__ uc_mcontext; } ;
typedef TYPE_4__ ucontext_t ;
typedef int u_register_t ;
struct TYPE_8__ {int si_signo; } ;
struct TYPE_7__ {int * sf_action; } ;
struct sigframe {int sf_signum; int sf_uc; TYPE_2__ sf_si; TYPE_1__ sf_ahu; void* sf_ucontext; void* sf_siginfo; } ;
typedef void* register_t ;
typedef int __siginfohandler_t ;
typedef int __sighandler_t ;


 int PSL_T ;
 scalar_t__ _ctx_start ;
 int bcopy (TYPE_4__*,int *,int) ;
 int bzero (struct sigframe*,int) ;
 int sigdelset (int *,int) ;

int
__signalcontext(ucontext_t *ucp, int sig, __sighandler_t *func)
{
 register_t *p;
 struct sigframe *sfp;
 p = (register_t *)(void *)(intptr_t)ucp->uc_mcontext.mc_esp;
 *--p = (register_t)(intptr_t)ucp;
 p = (register_t *)((u_register_t)p & ~0xF);
 p = (register_t *)((u_register_t)p - sizeof(struct sigframe));
 sfp = (struct sigframe *)p;
 bzero(sfp, sizeof(struct sigframe));
 sfp->sf_signum = sig;
 sfp->sf_siginfo = (register_t)(intptr_t)&sfp->sf_si;
 sfp->sf_ucontext = (register_t)(intptr_t)&sfp->sf_uc;
 sfp->sf_ahu.sf_action = (__siginfohandler_t *)func;
 bcopy(ucp, &sfp->sf_uc, sizeof(ucontext_t));
 sfp->sf_si.si_signo = sig;
 *--p = (register_t)(intptr_t)func;




 ucp->uc_mcontext.mc_esi = ucp->uc_mcontext.mc_esp - sizeof(int);
 ucp->uc_mcontext.mc_esp = (register_t)(intptr_t)p;
 ucp->uc_mcontext.mc_eip = (register_t)(intptr_t)_ctx_start;
 ucp->uc_mcontext.mc_eflags &= ~PSL_T;
 ucp->uc_link = &sfp->sf_uc;
 sigdelset(&ucp->uc_sigmask, sig);
 return (0);
}
