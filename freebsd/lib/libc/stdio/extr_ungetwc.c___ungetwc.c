
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int wint_t ;
struct xlocale_ctype {size_t (* __wcrtomb ) (char*,int ,int *) ;} ;
typedef int locale_t ;
struct TYPE_4__ {int _flags; int _mbstate; } ;
typedef TYPE_1__ FILE ;


 scalar_t__ EOF ;
 int MB_LEN_MAX ;
 int WEOF ;
 struct xlocale_ctype* XLOCALE_CTYPE (int ) ;
 int __SERR ;
 scalar_t__ __ungetc (unsigned char,TYPE_1__*) ;
 size_t stub1 (char*,int ,int *) ;

wint_t
__ungetwc(wint_t wc, FILE *fp, locale_t locale)
{
 char buf[MB_LEN_MAX];
 size_t len;
 struct xlocale_ctype *l = XLOCALE_CTYPE(locale);

 if (wc == WEOF)
  return (WEOF);
 if ((len = l->__wcrtomb(buf, wc, &fp->_mbstate)) == (size_t)-1) {
  fp->_flags |= __SERR;
  return (WEOF);
 }
 while (len-- != 0)
  if (__ungetc((unsigned char)buf[len], fp) == EOF)
   return (WEOF);

 return (wc);
}
