
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __suio {scalar_t__ uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {scalar_t__ iov_len; void* iov_base; } ;
typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 scalar_t__ INT_MAX ;
 int ORIENT (int *,int) ;
 int __sfvwrite (int *,struct __suio*) ;
 scalar_t__ strlen (char const*) ;

int
fputs(const char * __restrict s, FILE * __restrict fp)
{
 int retval;
 struct __suio uio;
 struct __siov iov;

 iov.iov_base = (void *)s;
 uio.uio_resid = iov.iov_len = strlen(s);
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, -1);
 retval = __sfvwrite(fp, &uio);
 FUNLOCKFILE_CANCELSAFE();
 if (retval == 0)
  return (iov.iov_len > INT_MAX ? INT_MAX : iov.iov_len);
 return (retval);
}
