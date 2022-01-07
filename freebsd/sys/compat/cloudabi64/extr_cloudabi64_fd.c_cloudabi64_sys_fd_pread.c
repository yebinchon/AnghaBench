
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct cloudabi64_sys_fd_pread_args {int offset; int fd; int iovs_len; int iovs; } ;


 int M_IOV ;
 int cloudabi64_copyinuio (int ,int ,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_preadv (struct thread*,int ,struct uio*,int ) ;

int
cloudabi64_sys_fd_pread(struct thread *td,
    struct cloudabi64_sys_fd_pread_args *uap)
{
 struct uio *uio;
 int error;

 error = cloudabi64_copyinuio(uap->iovs, uap->iovs_len, &uio);
 if (error != 0)
  return (error);
 error = kern_preadv(td, uap->fd, uio, uap->offset);
 free(uio, M_IOV);
 return (error);
}
