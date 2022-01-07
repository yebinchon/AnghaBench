
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_fcntl_args {int dummy; } ;


 int fcntl_common (struct thread*,struct linux_fcntl_args*) ;

int
linux_fcntl(struct thread *td, struct linux_fcntl_args *args)
{

 return (fcntl_common(td, args));
}
