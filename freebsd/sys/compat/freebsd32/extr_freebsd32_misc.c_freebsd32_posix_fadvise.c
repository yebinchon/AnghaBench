
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_posix_fadvise_args {int advice; int len; int offset; int fd; } ;


 int PAIR32TO64 (int ,int ) ;
 int kern_posix_error (struct thread*,int) ;
 int kern_posix_fadvise (struct thread*,int ,int ,int ,int ) ;
 int off_t ;

int
freebsd32_posix_fadvise(struct thread *td,
    struct freebsd32_posix_fadvise_args *uap)
{
 int error;

 error = kern_posix_fadvise(td, uap->fd, PAIR32TO64(off_t, uap->offset),
     PAIR32TO64(off_t, uap->len), uap->advice);
 return (kern_posix_error(td, error));
}
