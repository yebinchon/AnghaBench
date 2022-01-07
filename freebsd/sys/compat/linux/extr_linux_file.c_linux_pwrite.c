
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_pwrite_args {int offset; int nbyte; int buf; int fd; } ;


 int kern_pwrite (struct thread*,int ,int ,int ,int ) ;

int
linux_pwrite(struct thread *td, struct linux_pwrite_args *uap)
{

 return (kern_pwrite(td, uap->fd, uap->buf, uap->nbyte, uap->offset));
}
