
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_kill_args {scalar_t__ signum; int pid; } ;
struct kill_args {int pid; scalar_t__ signum; } ;


 int EINVAL ;
 int LINUX_SIG_VALID (scalar_t__) ;
 scalar_t__ linux_to_bsd_signal (scalar_t__) ;
 int sys_kill (struct thread*,struct kill_args*) ;

int
linux_kill(struct thread *td, struct linux_kill_args *args)
{
 struct kill_args tmp;







 if (!LINUX_SIG_VALID(args->signum) && args->signum != 0)
  return (EINVAL);

 if (args->signum > 0)
  tmp.signum = linux_to_bsd_signal(args->signum);
 else
  tmp.signum = 0;

 tmp.pid = args->pid;
 return (sys_kill(td, &tmp));
}
