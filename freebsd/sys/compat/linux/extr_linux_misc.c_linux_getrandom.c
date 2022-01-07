
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int uio_iovcnt; scalar_t__ uio_resid; struct thread* uio_td; int uio_rw; int uio_segflg; struct iovec* uio_iov; } ;
struct thread {scalar_t__* td_retval; } ;
struct linux_getrandom_args {int flags; scalar_t__ count; int buf; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;


 int EINVAL ;
 scalar_t__ INT_MAX ;
 int LINUX_GRND_NONBLOCK ;
 int LINUX_GRND_RANDOM ;
 int UIO_READ ;
 int UIO_USERSPACE ;
 int read_random_uio (struct uio*,int) ;

int
linux_getrandom(struct thread *td, struct linux_getrandom_args *args)
{
 struct uio uio;
 struct iovec iov;
 int error;

 if (args->flags & ~(LINUX_GRND_NONBLOCK|LINUX_GRND_RANDOM))
  return (EINVAL);
 if (args->count > INT_MAX)
  args->count = INT_MAX;

 iov.iov_base = args->buf;
 iov.iov_len = args->count;

 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 uio.uio_resid = iov.iov_len;
 uio.uio_segflg = UIO_USERSPACE;
 uio.uio_rw = UIO_READ;
 uio.uio_td = td;

 error = read_random_uio(&uio, args->flags & LINUX_GRND_NONBLOCK);
 if (error == 0)
  td->td_retval[0] = args->count - uio.uio_resid;
 return (error);
}
