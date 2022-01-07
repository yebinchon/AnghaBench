
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mbstate_t ;
typedef int locale_t ;
struct TYPE_2__ {int (* __mbsinit ) (int const*) ;} ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;
 int stub1 (int const*) ;

int
mbsinit_l(const mbstate_t *ps, locale_t locale)
{
 FIX_LOCALE(locale);
 return (XLOCALE_CTYPE(locale)->__mbsinit(ps));
}
