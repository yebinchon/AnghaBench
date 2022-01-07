
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct thread {struct proc* td_proc; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct proc {int dummy; } ;
struct linux_rlimit64 {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct linux_prlimit64_args {size_t resource; scalar_t__ pid; int * new; int * old; } ;
typedef int nrlim ;
typedef int lrlim ;


 int EINVAL ;
 void* LINUX_RLIM_INFINITY ;
 size_t LINUX_RLIM_NLIMITS ;
 int PGET_CANDEBUG ;
 int PGET_CANSEE ;
 int PGET_HOLD ;
 int PGET_NOTWEXIT ;
 int PHOLD (struct proc*) ;
 int PRELE (struct proc*) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ RLIM_INFINITY ;
 int copyin (int *,struct rlimit*,int) ;
 int copyout (struct linux_rlimit64*,int *,int) ;
 int kern_proc_setrlimit (struct thread*,struct proc*,int,struct rlimit*) ;
 int lim_rlimit_proc (struct proc*,int,struct rlimit*) ;
 int* linux_to_bsd_resource ;
 int pget (scalar_t__,int,struct proc**) ;

int
linux_prlimit64(struct thread *td, struct linux_prlimit64_args *args)
{
 struct rlimit rlim, nrlim;
 struct linux_rlimit64 lrlim;
 struct proc *p;
 u_int which;
 int flags;
 int error;

 if (args->resource >= LINUX_RLIM_NLIMITS)
  return (EINVAL);

 which = linux_to_bsd_resource[args->resource];
 if (which == -1)
  return (EINVAL);

 if (args->new != ((void*)0)) {





  error = copyin(args->new, &nrlim, sizeof(nrlim));
  if (error != 0)
   return (error);
 }

 flags = PGET_HOLD | PGET_NOTWEXIT;
 if (args->new != ((void*)0))
  flags |= PGET_CANDEBUG;
 else
  flags |= PGET_CANSEE;
 if (args->pid == 0) {
  p = td->td_proc;
  PHOLD(p);
 } else {
  error = pget(args->pid, flags, &p);
  if (error != 0)
   return (error);
 }
 if (args->old != ((void*)0)) {
  PROC_LOCK(p);
  lim_rlimit_proc(p, which, &rlim);
  PROC_UNLOCK(p);
  if (rlim.rlim_cur == RLIM_INFINITY)
   lrlim.rlim_cur = LINUX_RLIM_INFINITY;
  else
   lrlim.rlim_cur = rlim.rlim_cur;
  if (rlim.rlim_max == RLIM_INFINITY)
   lrlim.rlim_max = LINUX_RLIM_INFINITY;
  else
   lrlim.rlim_max = rlim.rlim_max;
  error = copyout(&lrlim, args->old, sizeof(lrlim));
  if (error != 0)
   goto out;
 }

 if (args->new != ((void*)0))
  error = kern_proc_setrlimit(td, p, which, &nrlim);

 out:
 PRELE(p);
 return (error);
}
