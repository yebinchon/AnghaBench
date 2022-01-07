
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_getsid_args {int pid; } ;
struct getsid_args {int pid; } ;


 int sys_getsid (struct thread*,struct getsid_args*) ;

int
linux_getsid(struct thread *td, struct linux_getsid_args *args)
{
 struct getsid_args bsd;

 bsd.pid = args->pid;
 return (sys_getsid(td, &bsd));
}
