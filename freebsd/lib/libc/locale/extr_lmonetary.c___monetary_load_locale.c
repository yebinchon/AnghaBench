
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int monetary_locale_changed; int using_monetary_locale; } ;


 TYPE_1__ __xlocale_global_locale ;
 int __xlocale_global_monetary ;
 int monetary_load_locale_l (int *,int *,int *,char const*) ;

int
__monetary_load_locale(const char *name)
{
 return monetary_load_locale_l(&__xlocale_global_monetary,
   &__xlocale_global_locale.using_monetary_locale,
   &__xlocale_global_locale.monetary_locale_changed, name);
}
