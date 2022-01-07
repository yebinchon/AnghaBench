
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int* _p; scalar_t__ _r; } ;
typedef TYPE_1__ FILE ;


 int HAVESIGN ;
 int NDIGITS ;
 int NZDIGITS ;
 int PFXOK ;
 int SIGNOK ;
 scalar_t__ __srefill (TYPE_1__*) ;
 int __ungetc (int,TYPE_1__*) ;

__attribute__((used)) static __inline int
parseint(FILE *fp, char * __restrict buf, int width, int base, int flags)
{

 static const short basefix[17] =
  { 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
 char *p;
 int c;

 flags |= SIGNOK | NDIGITS | NZDIGITS;
 for (p = buf; width; width--) {
  c = *fp->_p;




  switch (c) {
  case '0':
   if (base == 0) {
    base = 8;
    flags |= PFXOK;
   }
   if (flags & NZDIGITS)
    flags &= ~(SIGNOK|NZDIGITS|NDIGITS);
   else
    flags &= ~(SIGNOK|PFXOK|NDIGITS);
   goto ok;


  case '1': case '2': case '3':
  case '4': case '5': case '6': case '7':
   base = basefix[base];
   flags &= ~(SIGNOK | PFXOK | NDIGITS);
   goto ok;


  case '8': case '9':
   base = basefix[base];
   if (base <= 8)
    break;
   flags &= ~(SIGNOK | PFXOK | NDIGITS);
   goto ok;


  case 'A': case 'B': case 'C':
  case 'D': case 'E': case 'F':
  case 'a': case 'b': case 'c':
  case 'd': case 'e': case 'f':

   if (base <= 10)
    break;
   flags &= ~(SIGNOK | PFXOK | NDIGITS);
   goto ok;


  case '+': case '-':
   if (flags & SIGNOK) {
    flags &= ~SIGNOK;
    flags |= HAVESIGN;
    goto ok;
   }
   break;





  case 'x': case 'X':
   if (flags & PFXOK && p ==
       buf + 1 + !!(flags & HAVESIGN)) {
    base = 16;
    flags &= ~PFXOK;
    goto ok;
   }
   break;
  }





  break;
 ok:



  *p++ = c;
  if (--fp->_r > 0)
   fp->_p++;
  else if (__srefill(fp))
   break;
 }





 if (flags & NDIGITS) {
  if (p > buf)
   (void) __ungetc(*(u_char *)--p, fp);
  return (0);
 }
 c = ((u_char *)p)[-1];
 if (c == 'x' || c == 'X') {
  --p;
  (void) __ungetc(c, fp);
 }
 return (p - buf);
}
