
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int uc_sigmask; int uc_mcontext; } ;
typedef TYPE_1__ ucontext32_t ;
typedef int uc ;
struct thread {int td_proc; int td_sigmask; } ;
struct freebsd32_swapcontext_args {int * ucp; int * oucp; } ;


 int EINVAL ;
 int GET_MC_CLEAR_RET ;
 int PROC_LOCK (int ) ;
 int PROC_UNLOCK (int ) ;
 int SIG_SETMASK ;
 int UC32_COPY_SIZE ;
 int bzero (TYPE_1__*,int) ;
 int copyin (int *,TYPE_1__*,int ) ;
 int copyout (TYPE_1__*,int *,int ) ;
 int get_mcontext32 (struct thread*,int *,int ) ;
 int kern_sigprocmask (struct thread*,int ,int *,int *,int ) ;
 int set_mcontext32 (struct thread*,int *) ;

int
freebsd32_swapcontext(struct thread *td, struct freebsd32_swapcontext_args *uap)
{
 ucontext32_t uc;
 int ret;

 if (uap->oucp == ((void*)0) || uap->ucp == ((void*)0))
  ret = EINVAL;
 else {
  bzero(&uc, sizeof(uc));
  get_mcontext32(td, &uc.uc_mcontext, GET_MC_CLEAR_RET);
  PROC_LOCK(td->td_proc);
  uc.uc_sigmask = td->td_sigmask;
  PROC_UNLOCK(td->td_proc);
  ret = copyout(&uc, uap->oucp, UC32_COPY_SIZE);
  if (ret == 0) {
   ret = copyin(uap->ucp, &uc, UC32_COPY_SIZE);
   if (ret == 0) {
    ret = set_mcontext32(td, &uc.uc_mcontext);
    kern_sigprocmask(td, SIG_SETMASK,
      &uc.uc_sigmask, ((void*)0), 0);
   }
  }
 }
 return (ret);
}
