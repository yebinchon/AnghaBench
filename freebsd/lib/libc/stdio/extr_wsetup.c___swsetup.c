
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ _size; int * _base; } ;
struct TYPE_8__ {int _flags; TYPE_1__ _bf; scalar_t__ _w; scalar_t__ _lbfsize; int * _p; scalar_t__ _r; } ;
typedef TYPE_2__ FILE ;


 int EBADF ;
 int EOF ;
 int FREEUB (TYPE_2__*) ;
 scalar_t__ HASUB (TYPE_2__*) ;
 int __SEOF ;
 int __SERR ;
 int __SLBF ;
 int __SNBF ;
 int __SRD ;
 int __SRW ;
 int __SWR ;
 int __sdidinit ;
 int __sinit () ;
 int __smakebuf (TYPE_2__*) ;
 int errno ;

int
__swsetup(FILE *fp)
{

 if (!__sdidinit)
  __sinit();




 if ((fp->_flags & __SWR) == 0) {
  if ((fp->_flags & __SRW) == 0) {
   errno = EBADF;
   fp->_flags |= __SERR;
   return (EOF);
  }
  if (fp->_flags & __SRD) {

   if (HASUB(fp))
    FREEUB(fp);
   fp->_flags &= ~(__SRD|__SEOF);
   fp->_r = 0;
   fp->_p = fp->_bf._base;
  }
  fp->_flags |= __SWR;
 }




 if (fp->_bf._base == ((void*)0))
  __smakebuf(fp);
 if (fp->_flags & __SLBF) {





  fp->_w = 0;
  fp->_lbfsize = -fp->_bf._size;
 } else
  fp->_w = fp->_flags & __SNBF ? 0 : fp->_bf._size;
 return (0);
}
