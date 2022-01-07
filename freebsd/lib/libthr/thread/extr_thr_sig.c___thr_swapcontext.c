
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int uc_sigmask; } ;
typedef TYPE_1__ ucontext_t ;
typedef int uc ;


 int EINVAL ;
 int SIGCANCEL ;
 int SIGDELSET (int ,int ) ;
 scalar_t__ SIGISMEMBER (int ,int ) ;
 int __sys_swapcontext (TYPE_1__*,TYPE_1__ const*) ;
 int errno ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

int
__thr_swapcontext(ucontext_t *oucp, const ucontext_t *ucp)
{
 ucontext_t uc;

 if (oucp == ((void*)0) || ucp == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 if (SIGISMEMBER(ucp->uc_sigmask, SIGCANCEL)) {
  (void) memcpy(&uc, ucp, sizeof(uc));
  SIGDELSET(uc.uc_sigmask, SIGCANCEL);
  ucp = &uc;
 }
 return (__sys_swapcontext(oucp, ucp));
}
