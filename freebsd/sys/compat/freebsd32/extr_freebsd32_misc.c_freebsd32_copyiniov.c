
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct iovec32 {int iov_len; int iov_base; } ;
struct iovec {int iov_len; int iov_base; } ;


 int M_IOV ;
 int M_WAITOK ;
 int PTRIN (int ) ;
 int UIO_MAXIOV ;
 int copyin (struct iovec32*,struct iovec32*,int) ;
 int free (struct iovec*,int ) ;
 struct iovec* malloc (int,int ,int ) ;

int
freebsd32_copyiniov(struct iovec32 *iovp32, u_int iovcnt, struct iovec **iovp,
    int error)
{
 struct iovec32 iov32;
 struct iovec *iov;
 u_int iovlen;
 int i;

 *iovp = ((void*)0);
 if (iovcnt > UIO_MAXIOV)
  return (error);
 iovlen = iovcnt * sizeof(struct iovec);
 iov = malloc(iovlen, M_IOV, M_WAITOK);
 for (i = 0; i < iovcnt; i++) {
  error = copyin(&iovp32[i], &iov32, sizeof(struct iovec32));
  if (error) {
   free(iov, M_IOV);
   return (error);
  }
  iov[i].iov_base = PTRIN(iov32.iov_base);
  iov[i].iov_len = iov32.iov_len;
 }
 *iovp = iov;
 return (0);
}
