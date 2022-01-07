
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_fallocate_args {scalar_t__ mode; int len; int offset; int fd; } ;


 int ENOSYS ;
 int kern_posix_fallocate (struct thread*,int ,int ,int ) ;

int
linux_fallocate(struct thread *td, struct linux_fallocate_args *args)
{





 if (args->mode != 0)
  return (ENOSYS);

 return (kern_posix_fallocate(td, args->fd, args->offset,
     args->len));
}
