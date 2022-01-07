
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * locale_t ;


 int * LC_GLOBAL_LOCALE ;
 int * get_thread_locale () ;
 int set_thread_locale (int *) ;

locale_t uselocale(locale_t loc)
{
 locale_t old = get_thread_locale();
 if (((void*)0) != loc) {
  set_thread_locale(loc);
 }
 return (old ? old : LC_GLOBAL_LOCALE);
}
