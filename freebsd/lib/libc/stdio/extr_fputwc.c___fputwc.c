
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
typedef scalar_t__ wchar_t ;
struct xlocale_ctype {size_t (* __wcrtomb ) (char*,scalar_t__,int *) ;} ;
typedef int locale_t ;
struct TYPE_4__ {int _flags; int _mbstate; } ;
typedef TYPE_1__ FILE ;


 scalar_t__ EOF ;
 int MB_LEN_MAX ;
 int WEOF ;
 struct xlocale_ctype* XLOCALE_CTYPE (int ) ;
 int __SERR ;
 scalar_t__ __sputc (unsigned char,TYPE_1__*) ;
 size_t stub1 (char*,scalar_t__,int *) ;

wint_t
__fputwc(wchar_t wc, FILE *fp, locale_t locale)
{
 char buf[MB_LEN_MAX];
 size_t i, len;
 struct xlocale_ctype *l = XLOCALE_CTYPE(locale);

 if ((len = l->__wcrtomb(buf, wc, &fp->_mbstate)) == (size_t)-1) {
  fp->_flags |= __SERR;
  return (WEOF);
 }

 for (i = 0; i < len; i++)
  if (__sputc((unsigned char)buf[i], fp) == EOF)
   return (WEOF);

 return ((wint_t)wc);
}
