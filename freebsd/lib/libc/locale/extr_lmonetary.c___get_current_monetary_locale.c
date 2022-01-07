
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lc_monetary_T {int dummy; } ;
struct xlocale_monetary {struct lc_monetary_T locale; } ;
typedef TYPE_1__* locale_t ;
struct TYPE_3__ {scalar_t__* components; scalar_t__ using_monetary_locale; } ;


 size_t XLC_MONETARY ;
 int _C_monetary_locale ;

struct lc_monetary_T *
__get_current_monetary_locale(locale_t loc)
{
 return (loc->using_monetary_locale
  ? &((struct xlocale_monetary*)loc->components[XLC_MONETARY])->locale
  : (struct lc_monetary_T *)&_C_monetary_locale);
}
