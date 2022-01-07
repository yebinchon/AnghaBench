
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __suio {scalar_t__ uio_resid; scalar_t__ uio_iovcnt; } ;
typedef int locale_t ;
typedef int FILE ;


 int __sfvwrite (int *,struct __suio*) ;

__attribute__((used)) static int
__sprint(FILE *fp, struct __suio *uio, locale_t locale)
{
 int err;

 if (uio->uio_resid == 0) {
  uio->uio_iovcnt = 0;
  return (0);
 }
 err = __sfvwrite(fp, uio);
 uio->uio_resid = 0;
 uio->uio_iovcnt = 0;
 return (err);
}
