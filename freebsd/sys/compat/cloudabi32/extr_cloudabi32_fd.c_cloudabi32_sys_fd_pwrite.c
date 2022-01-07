
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct thread {int dummy; } ;
struct cloudabi32_sys_fd_pwrite_args {int offset; int fd; int iovs_len; int iovs; } ;


 int M_IOV ;
 int TO_PTR (int ) ;
 int cloudabi32_copyinuio (int ,int ,struct uio**) ;
 int free (struct uio*,int ) ;
 int kern_pwritev (struct thread*,int ,struct uio*,int ) ;

int
cloudabi32_sys_fd_pwrite(struct thread *td,
    struct cloudabi32_sys_fd_pwrite_args *uap)
{
 struct uio *uio;
 int error;

 error = cloudabi32_copyinuio(TO_PTR(uap->iovs), uap->iovs_len, &uio);
 if (error != 0)
  return (error);
 error = kern_pwritev(td, uap->fd, uio, uap->offset);
 free(uio, M_IOV);
 return (error);
}
