
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc ;
struct thread {int td_proc; int td_sigmask; } ;
struct ia32_ucontext {int uc_sigmask; int uc_mcontext; } ;
struct freebsd32_swapcontext_args {int * ucp; int * oucp; } ;


 int EINVAL ;
 int EJUSTRETURN ;
 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIG_SETMASK ;
 int UC_COPY_SIZE ;
 int bzero (struct ia32_ucontext*,int) ;
 int copyin (int *,struct ia32_ucontext*,int ) ;
 int copyout (struct ia32_ucontext*,int *,int ) ;
 int ia32_get_mcontext (struct thread*,int *,int ) ;
 int ia32_set_mcontext (struct thread*,int *) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;

int
freebsd32_swapcontext(struct thread *td, struct freebsd32_swapcontext_args *uap)
{
 struct ia32_ucontext uc;
 int ret;

 if (uap->oucp == ((void*)0) || uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  bzero(&uc, sizeof(uc));
  ia32_get_mcontext(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
  PROC_LOCK(td->td_proc);
  uc.uc_sigmask = td->td_sigmask;
  PROC_UNLOCK(td->td_proc);
  ret = copyout(&uc, uap->oucp, UC_COPY_SIZE);
  if (ret == 0) {
   ret = copyin(uap->ucp, &uc, UC_COPY_SIZE);
   if (ret == 0) {
    ret = ia32_set_mcontext(td, &uc.uc_mcontext);
    if (ret == 0) {
     kern_sigprocmask(td, SIG_SETMASK,
         &uc.uc_sigmask, ((void*)0), 0);
    }
   }
  }
 }
 return (ret == 0 ? EJUSTRETURN : ret);
}
