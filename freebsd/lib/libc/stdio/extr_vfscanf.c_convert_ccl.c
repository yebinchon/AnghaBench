
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t* _p; scalar_t__ _r; } ;
typedef TYPE_1__ FILE ;


 char* SUPPRESS_PTR ;
 scalar_t__ __srefill (TYPE_1__*) ;

__attribute__((used)) static __inline int
convert_ccl(FILE *fp, char * p, int width, const char *ccltab)
{
 char *p0;
 int n;

 if (p == SUPPRESS_PTR) {
  n = 0;
  while (ccltab[*fp->_p]) {
   n++, fp->_r--, fp->_p++;
   if (--width == 0)
    break;
   if (fp->_r <= 0 && __srefill(fp)) {
    if (n == 0)
     return (-1);
    break;
   }
  }
 } else {
  p0 = p;
  while (ccltab[*fp->_p]) {
   fp->_r--;
   *p++ = *fp->_p++;
   if (--width == 0)
    break;
   if (fp->_r <= 0 && __srefill(fp)) {
    if (p == p0)
     return (-1);
    break;
   }
  }
  n = p - p0;
  if (n == 0)
   return (0);
  *p = 0;
 }
 return (n);
}
