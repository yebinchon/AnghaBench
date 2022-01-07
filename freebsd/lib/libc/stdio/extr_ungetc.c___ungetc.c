
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int _size; int* _base; } ;
struct TYPE_8__ {int* _base; } ;
struct TYPE_10__ {int _flags; int _r; int* _p; int _ur; int* _up; int* _ubuf; TYPE_2__ _ub; TYPE_1__ _bf; scalar_t__ _lbfsize; scalar_t__ _w; } ;
typedef TYPE_3__ FILE ;


 int EOF ;
 scalar_t__ HASUB (TYPE_3__*) ;
 int __SEOF ;
 int __SRD ;
 int __SRW ;
 int __SWR ;
 scalar_t__ __sflush (TYPE_3__*) ;
 scalar_t__ __submore (TYPE_3__*) ;

int
__ungetc(int c, FILE *fp)
{

 if (c == EOF)
  return (EOF);
 if ((fp->_flags & __SRD) == 0) {




  if ((fp->_flags & __SRW) == 0)
   return (EOF);
  if (fp->_flags & __SWR) {
   if (__sflush(fp))
    return (EOF);
   fp->_flags &= ~__SWR;
   fp->_w = 0;
   fp->_lbfsize = 0;
  }
  fp->_flags |= __SRD;
 }
 c = (unsigned char)c;





 if (HASUB(fp)) {
  if (fp->_r >= fp->_ub._size && __submore(fp))
   return (EOF);
  *--fp->_p = c;
  fp->_r++;
  return (c);
 }
 fp->_flags &= ~__SEOF;






 if (fp->_bf._base != ((void*)0) && fp->_p > fp->_bf._base &&
     fp->_p[-1] == c) {
  fp->_p--;
  fp->_r++;
  return (c);
 }





 fp->_ur = fp->_r;
 fp->_up = fp->_p;
 fp->_ub._base = fp->_ubuf;
 fp->_ub._size = sizeof(fp->_ubuf);
 fp->_ubuf[sizeof(fp->_ubuf) - 1] = c;
 fp->_p = &fp->_ubuf[sizeof(fp->_ubuf) - 1];
 fp->_r = 1;
 return (c);
}
