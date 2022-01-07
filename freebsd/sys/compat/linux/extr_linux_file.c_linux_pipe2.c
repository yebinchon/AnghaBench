
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_pipe2_args {int flags; int pipefds; } ;
typedef int fildes ;


 int EINVAL ;
 int LINUX_O_CLOEXEC ;
 int LINUX_O_NONBLOCK ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int copyout (int*,int ,int) ;
 int kern_close (struct thread*,int) ;
 int kern_pipe (struct thread*,int*,int,int *,int *) ;

int
linux_pipe2(struct thread *td, struct linux_pipe2_args *args)
{
 int fildes[2];
 int error, flags;

 if ((args->flags & ~(LINUX_O_NONBLOCK | LINUX_O_CLOEXEC)) != 0)
  return (EINVAL);

 flags = 0;
 if ((args->flags & LINUX_O_NONBLOCK) != 0)
  flags |= O_NONBLOCK;
 if ((args->flags & LINUX_O_CLOEXEC) != 0)
  flags |= O_CLOEXEC;
 error = kern_pipe(td, fildes, flags, ((void*)0), ((void*)0));
 if (error != 0)
  return (error);

 error = copyout(fildes, args->pipefds, sizeof(fildes));
 if (error != 0) {
  (void)kern_close(td, fildes[0]);
  (void)kern_close(td, fildes[1]);
 }

 return (error);
}
