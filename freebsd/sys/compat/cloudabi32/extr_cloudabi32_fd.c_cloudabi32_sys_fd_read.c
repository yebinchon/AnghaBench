
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct cloudabi32_sys_fd_read_args {int fd; int iovs_len; int iovs; } ;


 int M_IOV ;
 int cloudabi32_copyinuio (int ,int ,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_readv (struct thread*,int ,struct uio*) ;

int
cloudabi32_sys_fd_read(struct thread *td,
    struct cloudabi32_sys_fd_read_args *uap)
{
 struct uio *uio;
 int error;

 error = cloudabi32_copyinuio(uap->iovs, uap->iovs_len, &uio);
 if (error != 0)
  return (error);
 error = kern_readv(td, uap->fd, uio);
 free(uio, M_IOV);
 return (error);
}
