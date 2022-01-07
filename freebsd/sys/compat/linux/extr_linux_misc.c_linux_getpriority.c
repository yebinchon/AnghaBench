
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__* td_retval; } ;
struct linux_getpriority_args {int who; int which; } ;
struct getpriority_args {int who; int which; } ;


 int sys_getpriority (struct thread*,struct getpriority_args*) ;

int
linux_getpriority(struct thread *td, struct linux_getpriority_args *args)
{
 struct getpriority_args bsd_args;
 int error;

 bsd_args.which = args->which;
 bsd_args.who = args->who;
 error = sys_getpriority(td, &bsd_args);
 td->td_retval[0] = 20 - td->td_retval[0];
 return (error);
}
