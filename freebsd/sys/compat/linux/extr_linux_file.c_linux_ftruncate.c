
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ftruncate_args {int length; int fd; } ;


 int kern_ftruncate (struct thread*,int ,int ) ;

int
linux_ftruncate(struct thread *td, struct linux_ftruncate_args *args)
{

 return (kern_ftruncate(td, args->fd, args->length));
}
