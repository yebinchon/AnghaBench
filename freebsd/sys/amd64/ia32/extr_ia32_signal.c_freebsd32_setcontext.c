
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct ia32_ucontext {int uc_sigmask; int uc_mcontext; } ;
struct freebsd32_setcontext_args {int * ucp; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int SIG_SETMASK ;
 int UC_COPY_SIZE ;
 int copyin (int *,struct ia32_ucontext*,int ) ;
 int ia32_set_mcontext (struct thread*,int *) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;

int
freebsd32_setcontext(struct thread *td, struct freebsd32_setcontext_args *uap)
{
 struct ia32_ucontext uc;
 int ret;

 if (uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  ret = copyin(uap->ucp, &uc, UC_COPY_SIZE);
  if (ret == 0) {
   ret = ia32_set_mcontext(td, &uc.uc_mcontext);
   if (ret == 0) {
    kern_sigprocmask(td, SIG_SETMASK,
        &uc.uc_sigmask, ((void*)0), 0);
   }
  }
 }
 return (ret == 0 ? EJUSTRETURN : ret);
}
