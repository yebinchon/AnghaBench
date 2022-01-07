
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_clone_args {int flags; } ;


 int LINUX_CLONE_THREAD ;
 int linux_clone_proc (struct thread*,struct linux_clone_args*) ;
 int linux_clone_thread (struct thread*,struct linux_clone_args*) ;

int
linux_clone(struct thread *td, struct linux_clone_args *args)
{

 if (args->flags & LINUX_CLONE_THREAD)
  return (linux_clone_thread(td, args));
 else
  return (linux_clone_proc(td, args));
}
