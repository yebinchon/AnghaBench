
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbstate_t ;
typedef int locale_t ;
typedef int char32_t ;
struct TYPE_2__ {int c32rtomb; } ;


 int EILSEQ ;
 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 int errno ;
 size_t wcrtomb_l (char*,int,int *,int ) ;

size_t
c32rtomb_l(char * __restrict s, char32_t c32, mbstate_t * __restrict ps,
    locale_t locale)
{


 if ((c32 >= 0xd800 && c32 <= 0xdfff) || c32 > 0x10ffff) {
  errno = EILSEQ;
  return ((size_t)-1);
 }

 FIX_LOCALE(locale);
 if (ps == ((void*)0))
  ps = &(XLOCALE_CTYPE(locale)->c32rtomb);


 return (wcrtomb_l(s, c32, ps, locale));
}
