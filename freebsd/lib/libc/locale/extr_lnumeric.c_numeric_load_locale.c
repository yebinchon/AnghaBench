
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lc_numeric_T {char* decimal_point; int grouping; } ;
struct xlocale_numeric {int buffer; struct lc_numeric_T locale; } ;
struct TYPE_2__ {char* decimal_point; } ;


 int LCNUMERIC_SIZE ;
 TYPE_1__ _C_numeric_locale ;
 int _LDP_ERROR ;
 int _LDP_LOADED ;
 int __fix_locale_grouping_str (int ) ;
 int __part_load_locale (char const*,int*,int *,char*,int ,int ,char const**) ;

__attribute__((used)) static int
numeric_load_locale(struct xlocale_numeric *loc, int *using_locale, int *changed,
  const char *name)
{
 int ret;
 struct lc_numeric_T *l = &loc->locale;

 ret = __part_load_locale(name, using_locale,
  &loc->buffer, "LC_NUMERIC",
  LCNUMERIC_SIZE, LCNUMERIC_SIZE,
  (const char**)l);
 if (ret != _LDP_ERROR)
  *changed= 1;
 if (ret == _LDP_LOADED) {

  if (*l->decimal_point == '\0')
   l->decimal_point =
       _C_numeric_locale.decimal_point;
  l->grouping =
      __fix_locale_grouping_str(l->grouping);
 }
 return (ret);
}
