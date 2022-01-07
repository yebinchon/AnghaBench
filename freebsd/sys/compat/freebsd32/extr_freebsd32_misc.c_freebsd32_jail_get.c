
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int * uio_iov; } ;
struct thread {int dummy; } ;
struct iovec32 {int dummy; } ;
struct freebsd32_jail_get_args {int iovcnt; scalar_t__ iovp; int flags; } ;
typedef int iov32 ;


 int CP (int ,struct iovec32,int ) ;
 int EINVAL ;
 int M_IOV ;
 int PTROUT_CP (int ,struct iovec32,int ) ;
 int copyout (struct iovec32*,scalar_t__,int) ;
 int free (struct uio*,int ) ;
 int freebsd32_copyinuio (scalar_t__,int,struct uio**) ;
 int iov_base ;
 int iov_len ;
 int kern_jail_get (struct thread*,struct uio*,int ) ;

int
freebsd32_jail_get(struct thread *td, struct freebsd32_jail_get_args *uap)
{
 struct iovec32 iov32;
 struct uio *auio;
 int error, i;


 if (uap->iovcnt & 1)
  return (EINVAL);

 error = freebsd32_copyinuio(uap->iovp, uap->iovcnt, &auio);
 if (error)
  return (error);
 error = kern_jail_get(td, auio, uap->flags);
 if (error == 0)
  for (i = 0; i < uap->iovcnt; i++) {
   PTROUT_CP(auio->uio_iov[i], iov32, iov_base);
   CP(auio->uio_iov[i], iov32, iov_len);
   error = copyout(&iov32, uap->iovp + i, sizeof(iov32));
   if (error != 0)
    break;
  }
 free(auio, M_IOV);
 return (error);
}
