
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_epoll_create1_args {int flags; } ;


 int EINVAL ;
 int LINUX_O_CLOEXEC ;
 int O_CLOEXEC ;
 int epoll_create_common (struct thread*,int) ;

int
linux_epoll_create1(struct thread *td, struct linux_epoll_create1_args *args)
{
 int flags;

 if ((args->flags & ~(LINUX_O_CLOEXEC)) != 0)
  return (EINVAL);

 flags = 0;
 if ((args->flags & LINUX_O_CLOEXEC) != 0)
  flags |= O_CLOEXEC;

 return (epoll_create_common(td, flags));
}
