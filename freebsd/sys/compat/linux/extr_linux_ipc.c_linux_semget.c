
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct semget_args {scalar_t__ nsems; int semflg; int key; } ;
struct linux_semget_args {scalar_t__ nsems; int semflg; int key; } ;


 int EINVAL ;
 int sys_semget (struct thread*,struct semget_args*) ;

int
linux_semget(struct thread *td, struct linux_semget_args *args)
{
 struct semget_args bsd_args;





 if (args->nsems < 0)
  return (EINVAL);
 bsd_args.key = args->key;
 bsd_args.nsems = args->nsems;
 bsd_args.semflg = args->semflg;
 return (sys_semget(td, &bsd_args));
}
