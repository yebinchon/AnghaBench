
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wint_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {int (* __wcrtomb ) (char*,int ,int *) ;} ;


 int EOF ;
 int FIX_LOCALE (int ) ;
 int MB_LEN_MAX ;
 int WEOF ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 int stub1 (char*,int ,int *) ;

int
wctob_l(wint_t c, locale_t locale)
{
 static const mbstate_t initial;
 mbstate_t mbs = initial;
 char buf[MB_LEN_MAX];
 FIX_LOCALE(locale);

 if (c == WEOF || XLOCALE_CTYPE(locale)->__wcrtomb(buf, c, &mbs) != 1)
  return (EOF);
 return ((unsigned char)*buf);
}
