
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lc_numeric_T {int dummy; } ;
struct xlocale_numeric {struct lc_numeric_T locale; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_3__ {scalar_t__* components; scalar_t__ using_numeric_locale; } ;


 size_t XLC_NUMERIC ;
 int _C_numeric_locale ;

struct lc_numeric_T *
__get_current_numeric_locale(locale_t loc)
{
 return (loc->using_numeric_locale
  ? &((struct xlocale_numeric *)loc->components[XLC_NUMERIC])->locale
  : (struct lc_numeric_T *)&_C_numeric_locale);
}
