
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * locale_t ;


 int __has_thread_locale ;
 int * __thread_locale ;
 int __xlocale_global_locale ;

__attribute__((used)) static inline locale_t __get_locale(void)
{

 if (!__has_thread_locale) {
  return (&__xlocale_global_locale);
 }
 return (__thread_locale ? __thread_locale : &__xlocale_global_locale);
}
