
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __wcrtomb ) (char*,int ,int *) ;int wcrtomb; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (char*,int ,int *) ;

size_t
wcrtomb_l(char * __restrict s, wchar_t wc, mbstate_t * __restrict ps,
  locale_t locale)
{
 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->wcrtomb);
 return (XLOCALE_CTYPE(locale)->__wcrtomb(s, wc, ps));
}
