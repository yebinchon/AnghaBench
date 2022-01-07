
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uio {int uio_iovcnt; int uio_offset; scalar_t__ uio_resid; int uio_segflg; struct iovec* uio_iov; } ;
struct iovec32 {scalar_t__ iov_len; int iov_base; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;


 int EINVAL ;
 scalar_t__ INT_MAX ;
 int M_IOV ;
 int M_WAITOK ;
 int PTRIN (int ) ;
 int UIO_MAXIOV ;
 int UIO_USERSPACE ;
 int copyin (struct iovec32*,struct iovec32*,int) ;
 int free (struct uio*,int ) ;
 struct uio* malloc (int,int ,int ) ;

__attribute__((used)) static int
freebsd32_copyinuio(struct iovec32 *iovp, u_int iovcnt, struct uio **uiop)
{
 struct iovec32 iov32;
 struct iovec *iov;
 struct uio *uio;
 u_int iovlen;
 int error, i;

 *uiop = ((void*)0);
 if (iovcnt > UIO_MAXIOV)
  return (EINVAL);
 iovlen = iovcnt * sizeof(struct iovec);
 uio = malloc(iovlen + sizeof *uio, M_IOV, M_WAITOK);
 iov = (struct iovec *)(uio + 1);
 for (i = 0; i < iovcnt; i++) {
  error = copyin(&iovp[i], &iov32, sizeof(struct iovec32));
  if (error) {
   free(uio, M_IOV);
   return (error);
  }
  iov[i].iov_base = PTRIN(iov32.iov_base);
  iov[i].iov_len = iov32.iov_len;
 }
 uio->uio_iov = iov;
 uio->uio_iovcnt = iovcnt;
 uio->uio_segflg = UIO_USERSPACE;
 uio->uio_offset = -1;
 uio->uio_resid = 0;
 for (i = 0; i < iovcnt; i++) {
  if (iov->iov_len > INT_MAX - uio->uio_resid) {
   free(uio, M_IOV);
   return (EINVAL);
  }
  uio->uio_resid += iov->iov_len;
  iov++;
 }
 *uiop = uio;
 return (0);
}
