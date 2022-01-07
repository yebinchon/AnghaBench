
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct shmget_args {int shmflg; int size; int key; } ;
struct linux_shmget_args {int shmflg; int size; int key; } ;


 int sys_shmget (struct thread*,struct shmget_args*) ;

int
linux_shmget(struct thread *td, struct linux_shmget_args *args)
{
 struct shmget_args bsd_args;





 bsd_args.key = args->key;
 bsd_args.size = args->size;
 bsd_args.shmflg = args->shmflg;
 return (sys_shmget(td, &bsd_args));
}
