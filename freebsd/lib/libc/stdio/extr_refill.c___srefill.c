
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int _size; int * _base; } ;
struct TYPE_11__ {scalar_t__ _r; int _flags; scalar_t__ _ur; TYPE_1__ _bf; int * _p; int * _up; scalar_t__ _lbfsize; scalar_t__ _w; } ;
typedef TYPE_2__ FILE ;


 int EBADF ;
 int EOF ;
 int FREEUB (TYPE_2__*) ;
 scalar_t__ HASUB (TYPE_2__*) ;
 int ORIENT (TYPE_2__*,int) ;
 int __SEOF ;
 int __SERR ;
 int __SIGN ;
 int __SLBF ;
 int __SMOD ;
 int __SNBF ;
 int __SRD ;
 int __SRW ;
 int __SWR ;
 int __sdidinit ;
 scalar_t__ __sflush (TYPE_2__*) ;
 int __sinit () ;
 int __smakebuf (TYPE_2__*) ;
 int _fwalk (int ) ;
 scalar_t__ _sread (TYPE_2__*,char*,int ) ;
 int errno ;
 int lflush ;

int
__srefill(FILE *fp)
{


 if (!__sdidinit)
  __sinit();

 ORIENT(fp, -1);

 fp->_r = 0;


 if (fp->_flags & __SEOF)
  return (EOF);


 if ((fp->_flags & __SRD) == 0) {
  if ((fp->_flags & __SRW) == 0) {
   errno = EBADF;
   fp->_flags |= __SERR;
   return (EOF);
  }

  if (fp->_flags & __SWR) {
   if (__sflush(fp))
    return (EOF);
   fp->_flags &= ~__SWR;
   fp->_w = 0;
   fp->_lbfsize = 0;
  }
  fp->_flags |= __SRD;
 } else {






  if (HASUB(fp)) {
   FREEUB(fp);
   if ((fp->_r = fp->_ur) != 0) {
    fp->_p = fp->_up;
    return (0);
   }
  }
 }

 if (fp->_bf._base == ((void*)0))
  __smakebuf(fp);






 if (fp->_flags & (__SLBF|__SNBF)) {

  fp->_flags |= __SIGN;
  (void) _fwalk(lflush);
  fp->_flags &= ~__SIGN;


  if ((fp->_flags & (__SLBF|__SWR)) == (__SLBF|__SWR))
   __sflush(fp);
 }
 fp->_p = fp->_bf._base;
 fp->_r = _sread(fp, (char *)fp->_p, fp->_bf._size);
 fp->_flags &= ~__SMOD;
 if (fp->_r <= 0) {
  if (fp->_r == 0)
   fp->_flags |= __SEOF;
  else {
   fp->_r = 0;
   fp->_flags |= __SERR;
  }
  return (EOF);
 }
 return (0);
}
