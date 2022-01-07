
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ _r; int * _p; } ;
typedef TYPE_1__ FILE ;


 char* SUPPRESS_PTR ;
 scalar_t__ __srefill (TYPE_1__*) ;
 int isspace (int ) ;

__attribute__((used)) static __inline int
convert_string(FILE *fp, char * p, int width)
{
 char *p0;
 int n;

 if (p == SUPPRESS_PTR) {
  n = 0;
  while (!isspace(*fp->_p)) {
   n++, fp->_r--, fp->_p++;
   if (--width == 0)
    break;
   if (fp->_r <= 0 && __srefill(fp))
    break;
  }
 } else {
  p0 = p;
  while (!isspace(*fp->_p)) {
   fp->_r--;
   *p++ = *fp->_p++;
   if (--width == 0)
    break;
   if (fp->_r <= 0 && __srefill(fp))
    break;
  }
  *p = 0;
  n = p - p0;
 }
 return (n);
}
