
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shmat_args {int shmflg; int shmaddr; int shmid; } ;
struct linux_shmat_args {int shmflg; int shmaddr; int shmid; } ;


 int PTRIN (int ) ;
 int sys_shmat (struct thread*,struct shmat_args*) ;

int
linux_shmat(struct thread *td, struct linux_shmat_args *args)
{
 struct shmat_args bsd_args;





 bsd_args.shmid = args->shmid;
 bsd_args.shmaddr = PTRIN(args->shmaddr);
 bsd_args.shmflg = args->shmflg;
 return (sys_shmat(td, &bsd_args));
}
