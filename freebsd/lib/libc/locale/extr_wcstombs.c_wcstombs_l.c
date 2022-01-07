
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __wcsnrtombs ) (char*,int const**,int ,size_t,int *) ;} ;


 int FIX_LOCALE (int ) ;
 int SIZE_T_MAX ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (char*,int const**,int ,size_t,int *) ;

size_t
wcstombs_l(char * __restrict s, const wchar_t * __restrict pwcs, size_t n,
  locale_t locale)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 const wchar_t *pwcsp;
 FIX_LOCALE(locale);

 mbs = initial;
 pwcsp = pwcs;
 return (XLOCALE_CTYPE(locale)->__wcsnrtombs(s, &pwcsp, SIZE_T_MAX, n, &mbs));
}
