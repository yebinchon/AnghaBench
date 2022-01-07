
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct thread {TYPE_2__* td_proc; } ;
struct linux_tgkill_args {scalar_t__ pid; scalar_t__ tgid; scalar_t__ sig; } ;
struct TYPE_8__ {int ksi_signo; int ksi_uid; int ksi_pid; scalar_t__ ksi_errno; int ksi_code; } ;
typedef TYPE_3__ ksiginfo_t ;
struct TYPE_7__ {TYPE_1__* p_ucred; int p_pid; } ;
struct TYPE_6__ {int cr_ruid; } ;


 int EINVAL ;
 int ESRCH ;
 int LINUX_SIG_VALID (scalar_t__) ;
 int SI_LWP ;
 int ksiginfo_init (TYPE_3__*) ;
 int linux_do_tkill (struct thread*,struct thread*,TYPE_3__*) ;
 struct thread* linux_tdfind (struct thread*,scalar_t__,scalar_t__) ;
 int linux_to_bsd_signal (scalar_t__) ;

int
linux_tgkill(struct thread *td, struct linux_tgkill_args *args)
{
 struct thread *tdt;
 ksiginfo_t ksi;
 int sig;

 if (args->pid <= 0 || args->tgid <=0)
  return (EINVAL);




 if (!LINUX_SIG_VALID(args->sig) && args->sig != 0)
  return (EINVAL);

 if (args->sig > 0)
  sig = linux_to_bsd_signal(args->sig);
 else
  sig = 0;

 tdt = linux_tdfind(td, args->pid, args->tgid);
 if (tdt == ((void*)0))
  return (ESRCH);

 ksiginfo_init(&ksi);
 ksi.ksi_signo = sig;
 ksi.ksi_code = SI_LWP;
 ksi.ksi_errno = 0;
 ksi.ksi_pid = td->td_proc->p_pid;
 ksi.ksi_uid = td->td_proc->p_ucred->cr_ruid;
 return (linux_do_tkill(td, tdt, &ksi));
}
