
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shmdt_args {int shmaddr; } ;
struct linux_shmdt_args {int shmaddr; } ;


 int PTRIN (int ) ;
 int sys_shmdt (struct thread*,struct shmdt_args*) ;

int
linux_shmdt(struct thread *td, struct linux_shmdt_args *args)
{
 struct shmdt_args bsd_args;



 bsd_args.shmaddr = PTRIN(args->shmaddr);
 return (sys_shmdt(td, &bsd_args));
}
