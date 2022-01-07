
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _r; scalar_t__ _p; int _flags; } ;
typedef TYPE_1__ FILE ;


 int EINVAL ;
 int ORIENT (TYPE_1__*,int) ;
 size_t SIZE_MAX ;
 int __SERR ;
 scalar_t__ __srefill (TYPE_1__*) ;
 int errno ;
 int memcpy (void*,void*,size_t) ;

size_t
__fread(void * __restrict buf, size_t size, size_t count, FILE * __restrict fp)
{
 size_t resid;
 char *p;
 int r;
 size_t total;




 if ((count == 0) || (size == 0))
  return (0);







 if (((count | size) > 0xFFFF) &&
     (count > SIZE_MAX / size)) {
  errno = EINVAL;
  fp->_flags |= __SERR;
  return (0);
 }





 resid = count * size;
 ORIENT(fp, -1);
 if (fp->_r < 0)
  fp->_r = 0;
 total = resid;
 p = buf;
 while (resid > (r = fp->_r)) {
  (void)memcpy((void *)p, (void *)fp->_p, (size_t)r);
  fp->_p += r;

  p += r;
  resid -= r;
  if (__srefill(fp)) {

   return ((total - resid) / size);
  }
 }
 (void)memcpy((void *)p, (void *)fp->_p, resid);
 fp->_r -= resid;
 fp->_p += resid;
 return (count);
}
