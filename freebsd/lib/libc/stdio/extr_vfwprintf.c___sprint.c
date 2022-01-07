
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct __suio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {int iov_len; scalar_t__ iov_base; } ;
typedef int locale_t ;
typedef int FILE ;


 scalar_t__ WEOF ;
 scalar_t__ __xfputwc (int ,int *,int ) ;

__attribute__((used)) static int
__sprint(FILE *fp, struct __suio *uio, locale_t locale)
{
 struct __siov *iov;
 wchar_t *p;
 int i, len;

 iov = uio->uio_iov;
 for (; uio->uio_resid != 0; uio->uio_resid -= len, iov++) {
  p = (wchar_t *)iov->iov_base;
  len = iov->iov_len;
  for (i = 0; i < len; i++) {
   if (__xfputwc(p[i], fp, locale) == WEOF)
    return (-1);
  }
 }
 uio->uio_iovcnt = 0;
 return (0);
}
