
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct linux_rt_tgsigqueueinfo_args {int sig; int tgid; int tid; int uinfo; } ;
typedef int linfo ;
struct TYPE_4__ {scalar_t__ lsi_code; } ;
typedef TYPE_1__ l_siginfo_t ;
typedef int ksiginfo_t ;


 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int LINUX_SIG_VALID (int ) ;
 int copyin (int ,TYPE_1__*,int) ;
 int ksiginfo_init (int *) ;
 int linux_do_tkill (struct thread*,struct thread*,int *) ;
 struct thread* linux_tdfind (struct thread*,int ,int ) ;
 int linux_to_bsd_signal (int ) ;
 int lsiginfo_to_ksiginfo (TYPE_1__*,int *,int) ;

int
linux_rt_tgsigqueueinfo(struct thread *td, struct linux_rt_tgsigqueueinfo_args *args)
{
 l_siginfo_t linfo;
 struct thread *tds;
 ksiginfo_t ksi;
 int error;
 int sig;

 if (!LINUX_SIG_VALID(args->sig))
  return (EINVAL);

 error = copyin(args->uinfo, &linfo, sizeof(linfo));
 if (error != 0)
  return (error);

 if (linfo.lsi_code >= 0)
  return (EPERM);

 tds = linux_tdfind(td, args->tid, args->tgid);
 if (tds == ((void*)0))
  return (ESRCH);

 sig = linux_to_bsd_signal(args->sig);
 ksiginfo_init(&ksi);
 lsiginfo_to_ksiginfo(&linfo, &ksi, sig);
 return (linux_do_tkill(td, tds, &ksi));
}
