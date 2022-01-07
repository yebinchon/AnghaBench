
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct proc {int dummy; } ;
struct linux_rt_sigqueueinfo_args {int pid; int sig; int info; } ;
typedef int linfo ;
struct TYPE_4__ {scalar_t__ lsi_code; } ;
typedef TYPE_1__ l_siginfo_t ;
typedef int ksiginfo_t ;


 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int LINUX_SIG_VALID (int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int copyin (int ,TYPE_1__*,int) ;
 int ksiginfo_init (int *) ;
 int linux_to_bsd_signal (int ) ;
 int lsiginfo_to_ksiginfo (TYPE_1__*,int *,int) ;
 int p_cansignal (struct thread*,struct proc*,int) ;
 struct proc* pfind_any (int ) ;
 int tdsendsignal (struct proc*,int *,int,int *) ;

int
linux_rt_sigqueueinfo(struct thread *td, struct linux_rt_sigqueueinfo_args *args)
{
 l_siginfo_t linfo;
 struct proc *p;
 ksiginfo_t ksi;
 int error;
 int sig;

 if (!LINUX_SIG_VALID(args->sig))
  return (EINVAL);

 error = copyin(args->info, &linfo, sizeof(linfo));
 if (error != 0)
  return (error);

 if (linfo.lsi_code >= 0)
  return (EPERM);

 sig = linux_to_bsd_signal(args->sig);

 error = ESRCH;
 if ((p = pfind_any(args->pid)) != ((void*)0)) {
  error = p_cansignal(td, p, sig);
  if (error != 0) {
   PROC_UNLOCK(p);
   return (error);
  }

  ksiginfo_init(&ksi);
  lsiginfo_to_ksiginfo(&linfo, &ksi, sig);
  error = tdsendsignal(p, ((void*)0), sig, &ksi);
  PROC_UNLOCK(p);
 }

 return (error);
}
