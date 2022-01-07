
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lc_time_T {int dummy; } ;
struct xlocale_time {int buffer; struct lc_time_T locale; } ;


 int LCTIME_SIZE ;
 int __part_load_locale (char const*,int*,int *,char*,int ,int ,char const**) ;

__attribute__((used)) static int
time_load_locale(struct xlocale_time *l, int *using_locale, const char *name)
{
 struct lc_time_T *time_locale = &l->locale;
 return (__part_load_locale(name, using_locale,
   &l->buffer, "LC_TIME",
   LCTIME_SIZE, LCTIME_SIZE,
   (const char **)time_locale));
}
