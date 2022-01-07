
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numeric_locale_changed; int using_numeric_locale; } ;


 TYPE_1__ __xlocale_global_locale ;
 int __xlocale_global_numeric ;
 int numeric_load_locale (int *,int *,int *,char const*) ;

int
__numeric_load_locale(const char *name)
{
 return numeric_load_locale(&__xlocale_global_numeric,
   &__xlocale_global_locale.using_numeric_locale,
   &__xlocale_global_locale.numeric_locale_changed, name);
}
