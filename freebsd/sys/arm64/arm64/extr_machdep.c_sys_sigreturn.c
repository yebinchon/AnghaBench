
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_sigmask; int uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
typedef int uc ;
struct thread {int dummy; } ;
struct sigreturn_args {int sigcntxp; } ;


 int EFAULT ;
 int EJUSTRETURN ;
 int SIG_SETMASK ;
 scalar_t__ copyin (int ,TYPE_1__*,int) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_fpcontext (struct thread*,int *) ;
 int set_mcontext (struct thread*,int *) ;

int
sys_sigreturn(struct thread *td, struct sigreturn_args *uap)
{
 ucontext_t uc;
 int error;

 if (uap == ((void*)0))
  return (EFAULT);
 if (copyin(uap->sigcntxp, &uc, sizeof(uc)))
  return (EFAULT);

 error = set_mcontext(td, &uc.uc_mcontext);
 if (error != 0)
  return (error);
 set_fpcontext(td, &uc.uc_mcontext);


 kern_sigprocmask(td, SIG_SETMASK, &uc.uc_sigmask, ((void*)0), 0);

 return (EJUSTRETURN);
}
