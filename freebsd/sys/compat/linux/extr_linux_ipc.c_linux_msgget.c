
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct msgget_args {int msgflg; int key; } ;
struct linux_msgget_args {int msgflg; int key; } ;


 int sys_msgget (struct thread*,struct msgget_args*) ;

int
linux_msgget(struct thread *td, struct linux_msgget_args *args)
{
 struct msgget_args bsd_args;




 bsd_args.key = args->key;
 bsd_args.msgflg = args->msgflg;
 return (sys_msgget(td, &bsd_args));
}
