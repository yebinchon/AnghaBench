
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct l_iovec32 {int iov_len; int iov_base; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef int l_ulong ;


 int M_IOV ;
 int M_WAITOK ;
 int PTRIN (int ) ;
 int UIO_MAXIOV ;
 int copyin (struct l_iovec32*,struct l_iovec32*,int) ;
 int free (struct iovec*,int ) ;
 struct iovec* malloc (int,int ,int ) ;

int
linux32_copyiniov(struct l_iovec32 *iovp32, l_ulong iovcnt, struct iovec **iovp,
    int error)
{
 struct l_iovec32 iov32;
 struct iovec *iov;
 uint32_t iovlen;
 int i;

 *iovp = ((void*)0);
 if (iovcnt > UIO_MAXIOV)
  return (error);
 iovlen = iovcnt * sizeof(struct iovec);
 iov = malloc(iovlen, M_IOV, M_WAITOK);
 for (i = 0; i < iovcnt; i++) {
  error = copyin(&iovp32[i], &iov32, sizeof(struct l_iovec32));
  if (error) {
   free(iov, M_IOV);
   return (error);
  }
  iov[i].iov_base = PTRIN(iov32.iov_base);
  iov[i].iov_len = iov32.iov_len;
 }
 *iovp = iov;
 return(0);

}
