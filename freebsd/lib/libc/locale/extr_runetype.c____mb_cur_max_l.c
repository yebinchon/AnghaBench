
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int locale_t ;
struct TYPE_2__ {int __mb_cur_max; } ;


 int FIX_LOCALE (int ) ;
 TYPE_1__* XLOCALE_CTYPE (int ) ;

int ___mb_cur_max_l(locale_t locale)
{
 FIX_LOCALE(locale);
 return XLOCALE_CTYPE(locale)->__mb_cur_max;
}
