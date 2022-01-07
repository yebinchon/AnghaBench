
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int _size; int _base; } ;
struct TYPE_9__ {int _flags; TYPE_1__ _bf; int _w; scalar_t__ _r; int _p; } ;
typedef TYPE_2__ FILE ;


 int EBADF ;
 int EOF ;
 int FLOCKFILE (TYPE_2__*) ;
 int FREEUB (TYPE_2__*) ;
 int FUNLOCKFILE (TYPE_2__*) ;
 scalar_t__ HASUB (TYPE_2__*) ;
 int __SLBF ;
 int __SNBF ;
 int __SRD ;
 int errno ;

int
fpurge(FILE *fp)
{
 int retval;
 FLOCKFILE(fp);
 if (!fp->_flags) {
  errno = EBADF;
  retval = EOF;
 } else {
  if (HASUB(fp))
   FREEUB(fp);
  fp->_p = fp->_bf._base;
  fp->_r = 0;
  fp->_w = fp->_flags & (__SLBF|__SNBF|__SRD) ? 0 : fp->_bf._size;
  retval = 0;
 }
 FUNLOCKFILE(fp);
 return (retval);
}
