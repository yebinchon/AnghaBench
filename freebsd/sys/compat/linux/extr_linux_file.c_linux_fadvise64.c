
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_fadvise64_args {int len; int offset; int fd; int advice; } ;


 int EINVAL ;
 int convert_fadvice (int ) ;
 int kern_posix_fadvise (struct thread*,int ,int ,int ,int) ;

int
linux_fadvise64(struct thread *td, struct linux_fadvise64_args *args)
{
 int advice;

 advice = convert_fadvice(args->advice);
 if (advice == -1)
  return (EINVAL);
 return (kern_posix_fadvise(td, args->fd, args->offset, args->len,
     advice));
}
