
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {size_t (* __mbsnrtowcs ) (int *,char const**,int ,size_t,int *) ;} ;


 int FIX_LOCALE (int ) ;
 int SIZE_T_MAX ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 size_t stub1 (int *,char const**,int ,size_t,int *) ;

size_t
mbstowcs_l(wchar_t * __restrict pwcs, const char * __restrict s, size_t n, locale_t locale)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 const char *sp;
 FIX_LOCALE(locale);

 mbs = initial;
 sp = s;
 return (XLOCALE_CTYPE(locale)->__mbsnrtowcs(pwcs, &sp, SIZE_T_MAX, n, &mbs));
}
