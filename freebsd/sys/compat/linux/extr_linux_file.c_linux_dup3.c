
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_dup3_args {intptr_t oldfd; intptr_t newfd; int flags; } ;


 int EINVAL ;
 int F_DUP2FD ;
 int F_DUP2FD_CLOEXEC ;
 int LINUX_O_CLOEXEC ;
 int kern_fcntl (struct thread*,intptr_t,int,intptr_t) ;

int
linux_dup3(struct thread *td, struct linux_dup3_args *args)
{
 int cmd;
 intptr_t newfd;

 if (args->oldfd == args->newfd)
  return (EINVAL);
 if ((args->flags & ~LINUX_O_CLOEXEC) != 0)
  return (EINVAL);
 if (args->flags & LINUX_O_CLOEXEC)
  cmd = F_DUP2FD_CLOEXEC;
 else
  cmd = F_DUP2FD;

 newfd = args->newfd;
 return (kern_fcntl(td, args->oldfd, cmd, newfd));
}
