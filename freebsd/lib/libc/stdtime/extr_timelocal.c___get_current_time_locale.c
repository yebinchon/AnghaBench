
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lc_time_T {int dummy; } ;
struct xlocale_time {struct lc_time_T locale; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_3__ {scalar_t__* components; scalar_t__ using_time_locale; } ;


 size_t XLC_TIME ;
 int _C_time_locale ;

struct lc_time_T *
__get_current_time_locale(locale_t loc)
{
 return (loc->using_time_locale
  ? &((struct xlocale_time *)loc->components[XLC_TIME])->locale
  : (struct lc_time_T *)&_C_time_locale);
}
