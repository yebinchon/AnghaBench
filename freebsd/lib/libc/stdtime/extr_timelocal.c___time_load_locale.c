
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int using_time_locale; } ;


 TYPE_1__ __xlocale_global_locale ;
 int __xlocale_global_time ;
 int time_load_locale (int *,int *,char const*) ;

int
__time_load_locale(const char *name)
{
 return time_load_locale(&__xlocale_global_time,
   &__xlocale_global_locale.using_time_locale, name);
}
