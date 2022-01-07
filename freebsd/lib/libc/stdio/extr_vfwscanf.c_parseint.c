
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int locale_t ;
typedef int FILE ;


 int HAVESIGN ;
 int NDIGITS ;
 int NZDIGITS ;
 int PFXOK ;
 int SIGNOK ;
 int WEOF ;
 int __fgetwc (int *,int ) ;
 int __ungetwc (int,int *,int ) ;

__attribute__((used)) static __inline int
parseint(FILE *fp, wchar_t *buf, int width, int base, int flags,
    locale_t locale)
{

 static const short basefix[17] =
  { 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
 wchar_t *wcp;
 int c;

 flags |= SIGNOK | NDIGITS | NZDIGITS;
 for (wcp = buf; width; width--) {
  c = __fgetwc(fp, locale);




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
   if (flags & PFXOK && wcp ==
       buf + 1 + !!(flags & HAVESIGN)) {
    base = 16;
    flags &= ~PFXOK;
    goto ok;
   }
   break;
  }





  if (c != WEOF)
   __ungetwc(c, fp, locale);
  break;
 ok:



  *wcp++ = (wchar_t)c;
 }





 if (flags & NDIGITS) {
  if (wcp > buf)
   __ungetwc(*--wcp, fp, locale);
  return (0);
 }
 c = wcp[-1];
 if (c == 'x' || c == 'X') {
  --wcp;
  __ungetwc(c, fp, locale);
 }
 return (wcp - buf);
}
