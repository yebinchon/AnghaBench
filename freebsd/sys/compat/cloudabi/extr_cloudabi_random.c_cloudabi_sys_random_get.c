
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; struct thread* uio_td; int uio_rw; int uio_segflg; int uio_resid; struct iovec* uio_iov; } ;
struct thread {int dummy; } ;
struct iovec {int iov_len; int iov_base; } ;
struct cloudabi_sys_random_get_args {int buf_len; int buf; } ;


 int UIO_READ ;
 int UIO_USERSPACE ;
 int read_random_uio (struct uio*,int) ;

int
cloudabi_sys_random_get(struct thread *td,
    struct cloudabi_sys_random_get_args *uap)
{
 struct iovec iov = {
  .iov_base = uap->buf,
  .iov_len = uap->buf_len
 };
 struct uio uio = {
  .uio_iov = &iov,
  .uio_iovcnt = 1,
  .uio_resid = iov.iov_len,
  .uio_segflg = UIO_USERSPACE,
  .uio_rw = UIO_READ,
  .uio_td = td
 };

 return (read_random_uio(&uio, 0));
}
