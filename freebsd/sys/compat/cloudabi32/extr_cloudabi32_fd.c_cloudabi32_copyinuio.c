
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct uio {size_t uio_iovcnt; int uio_offset; scalar_t__ uio_resid; int uio_segflg; struct iovec* uio_iov; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;
typedef int iovobj ;
struct TYPE_5__ {scalar_t__ buf_len; int buf; } ;
typedef TYPE_1__ cloudabi32_iovec_t ;


 int EINVAL ;
 scalar_t__ INT32_MAX ;
 int M_IOV ;
 int M_WAITOK ;
 int TO_PTR (int ) ;
 size_t UIO_MAXIOV ;
 int UIO_USERSPACE ;
 int copyin (TYPE_1__ const*,TYPE_1__*,int) ;
 int free (struct uio*,int ) ;
 struct uio* malloc (int,int ,int ) ;

__attribute__((used)) static int
cloudabi32_copyinuio(const cloudabi32_iovec_t *iovp, size_t iovcnt,
    struct uio **uiop)
{
 cloudabi32_iovec_t iovobj;
 struct uio *uio;
 struct iovec *iov;
 size_t i;
 int error;


 if (iovcnt > UIO_MAXIOV)
  return (EINVAL);
 uio = malloc(sizeof(struct uio) + iovcnt * sizeof(struct iovec),
     M_IOV, M_WAITOK);
 iov = (struct iovec *)(uio + 1);


 uio->uio_iov = iov;
 uio->uio_iovcnt = iovcnt;
 uio->uio_segflg = UIO_USERSPACE;
 uio->uio_offset = -1;
 uio->uio_resid = 0;


 for (i = 0; i < iovcnt; i++) {
  error = copyin(&iovp[i], &iovobj, sizeof(iovobj));
  if (error != 0) {
   free(uio, M_IOV);
   return (error);
  }
  iov[i].iov_base = TO_PTR(iovobj.buf);
  iov[i].iov_len = iovobj.buf_len;
  if (iov[i].iov_len > INT32_MAX - uio->uio_resid) {
   free(uio, M_IOV);
   return (EINVAL);
  }
  uio->uio_resid += iov[i].iov_len;
 }

 *uiop = uio;
 return (0);
}
