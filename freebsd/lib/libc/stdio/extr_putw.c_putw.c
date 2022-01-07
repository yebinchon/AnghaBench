
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int w ;
struct __suio {int uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {int* iov_base; int iov_len; } ;
typedef int FILE ;


 int FLOCKFILE_CANCELSAFE (int *) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int __sfvwrite (int *,struct __suio*) ;

int
putw(int w, FILE *fp)
{
 int retval;
 struct __suio uio;
 struct __siov iov;

 iov.iov_base = &w;
 uio.uio_resid = iov.iov_len = sizeof(w);
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;
 FLOCKFILE_CANCELSAFE(fp);
 retval = __sfvwrite(fp, &uio);
 FUNLOCKFILE_CANCELSAFE();
 return (retval);
}
