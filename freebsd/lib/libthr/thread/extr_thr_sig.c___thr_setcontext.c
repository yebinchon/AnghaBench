
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int uc_sigmask; } ;
typedef TYPE_1__ const ucontext_t ;
typedef int uc ;


 int EINVAL ;
 int SIGCANCEL ;
 int SIGDELSET (int ,int ) ;
 int SIGISMEMBER (int ,int ) ;
 int __sys_setcontext (TYPE_1__ const*) ;
 int errno ;
 int memcpy (TYPE_1__ const*,TYPE_1__ const*,int) ;

int
__thr_setcontext(const ucontext_t *ucp)
{
 ucontext_t uc;

 if (ucp == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 if (!SIGISMEMBER(ucp->uc_sigmask, SIGCANCEL))
  return (__sys_setcontext(ucp));
 (void) memcpy(&uc, ucp, sizeof(uc));
 SIGDELSET(uc.uc_sigmask, SIGCANCEL);
 return (__sys_setcontext(&uc));
}
