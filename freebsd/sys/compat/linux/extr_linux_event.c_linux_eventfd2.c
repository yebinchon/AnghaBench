
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_eventfd2_args {int flags; int initval; } ;


 int EINVAL ;
 int LINUX_EFD_SEMAPHORE ;
 int LINUX_O_CLOEXEC ;
 int LINUX_O_NONBLOCK ;
 int eventfd_create (struct thread*,int ,int) ;

int
linux_eventfd2(struct thread *td, struct linux_eventfd2_args *args)
{

 if ((args->flags & ~(LINUX_O_CLOEXEC|LINUX_O_NONBLOCK|LINUX_EFD_SEMAPHORE)) != 0)
  return (EINVAL);

 return (eventfd_create(td, args->initval, args->flags));
}
