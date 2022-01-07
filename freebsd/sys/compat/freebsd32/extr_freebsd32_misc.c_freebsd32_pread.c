
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_pread_args {int offset; int nbyte; int buf; int fd; } ;


 int PAIR32TO64 (int ,int ) ;
 int kern_pread (struct thread*,int ,int ,int ,int ) ;
 int off_t ;

int
freebsd32_pread(struct thread *td, struct freebsd32_pread_args *uap)
{

 return (kern_pread(td, uap->fd, uap->buf, uap->nbyte,
     PAIR32TO64(off_t, uap->offset)));
}
