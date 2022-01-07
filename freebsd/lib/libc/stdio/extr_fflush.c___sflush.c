
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* _base; int _size; } ;
struct TYPE_6__ {int _flags; unsigned char* _p; int _w; TYPE_1__ _bf; } ;
typedef TYPE_2__ FILE ;


 int EOF ;
 int __SERR ;
 int __SLBF ;
 int __SNBF ;
 int __SWR ;
 int _swrite (TYPE_2__*,char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;

int
__sflush(FILE *fp)
{
 unsigned char *p;
 int n, t;

 t = fp->_flags;
 if ((t & __SWR) == 0)
  return (0);

 if ((p = fp->_bf._base) == ((void*)0))
  return (0);

 n = fp->_p - p;





 fp->_p = p;
 fp->_w = t & (__SLBF|__SNBF) ? 0 : fp->_bf._size;

 for (; n > 0; n -= t, p += t) {
  t = _swrite(fp, (char *)p, n);
  if (t <= 0) {

   if (p > fp->_p) {

    memmove(fp->_p, p, n);
    fp->_p += n;
    if ((fp->_flags & (__SLBF | __SNBF)) == 0)
     fp->_w -= n;
   }
   fp->_flags |= __SERR;
   return (EOF);
  }
 }
 return (0);
}
