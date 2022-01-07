
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct __suio {size_t uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {size_t iov_len; void* iov_base; } ;
struct TYPE_6__ {int _flags; } ;
typedef TYPE_1__ FILE ;


 int EINVAL ;
 int FLOCKFILE_CANCELSAFE (TYPE_1__*) ;
 int FUNLOCKFILE_CANCELSAFE () ;
 int ORIENT (TYPE_1__*,int) ;
 size_t SIZE_MAX ;
 int __SERR ;
 scalar_t__ __sfvwrite (TYPE_1__*,struct __suio*) ;
 int errno ;

size_t
fwrite(const void * __restrict buf, size_t size, size_t count, FILE * __restrict fp)
{
 size_t n;
 struct __suio uio;
 struct __siov iov;




 if ((count == 0) || (size == 0))
  return (0);







 if (((count | size) > 0xFFFF) &&
     (count > SIZE_MAX / size)) {
  errno = EINVAL;
  fp->_flags |= __SERR;
  return (0);
 }

 n = count * size;

 iov.iov_base = (void *)buf;
 uio.uio_resid = iov.iov_len = n;
 uio.uio_iov = &iov;
 uio.uio_iovcnt = 1;

 FLOCKFILE_CANCELSAFE(fp);
 ORIENT(fp, -1);





 if (__sfvwrite(fp, &uio) != 0)
     count = (n - uio.uio_resid) / size;
 FUNLOCKFILE_CANCELSAFE();
 return (count);
}
