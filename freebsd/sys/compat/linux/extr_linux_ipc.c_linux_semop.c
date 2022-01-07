
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct semop_args {scalar_t__ semid; int nsops; int sops; } ;
struct linux_semop_args {int nsops; scalar_t__ semid; int tsops; } ;


 int EINVAL ;
 int PTRIN (int ) ;
 int sys_semop (struct thread*,struct semop_args*) ;

int
linux_semop(struct thread *td, struct linux_semop_args *args)
{
 struct semop_args bsd_args;





 if (args->nsops < 1 || args->semid < 0)
  return (EINVAL);
 bsd_args.semid = args->semid;
 bsd_args.sops = PTRIN(args->tsops);
 bsd_args.nsops = args->nsops;
 return (sys_semop(td, &bsd_args));
}
