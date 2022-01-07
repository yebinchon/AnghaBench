
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * locale_t ;


 int __xlocale_C_locale ;
 int __xlocale_global_locale ;

__attribute__((used)) static inline locale_t get_real_locale(locale_t locale)
{
 switch ((intptr_t)locale) {
  case 0: return (&__xlocale_C_locale);
  case -1: return (&__xlocale_global_locale);
  default: return (locale);
 }
}
