
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uc ;
struct thread {int td_proc; int td_sigmask; } ;
struct ia32_ucontext {int uc_sigmask; int uc_mcontext; } ;
struct freebsd32_getcontext_args {int * ucp; } ;


 int EINVAL ;
 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int UC_COPY_SIZE ;
 int bzero (struct ia32_ucontext*,int) ;
 int copyout (struct ia32_ucontext*,int *,int ) ;
 int ia32_get_mcontext (struct thread*,int *,int ) ;

int
freebsd32_getcontext(struct thread *td, struct freebsd32_getcontext_args *uap)
{
 struct ia32_ucontext uc;
 int ret;

 if (uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  bzero(&uc, sizeof(uc));
  ia32_get_mcontext(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
  PROC_LOCK(td->td_proc);
  uc.uc_sigmask = td->td_sigmask;
  PROC_UNLOCK(td->td_proc);
  ret = copyout(&uc, uap->ucp, UC_COPY_SIZE);
 }
 return (ret);
}
