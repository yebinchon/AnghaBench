
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlocale_refcounted {int dummy; } ;
typedef scalar_t__ locale_t ;


 scalar_t__ LC_GLOBAL_LOCALE ;
 int __set_thread_rune_locale (scalar_t__) ;
 scalar_t__ __thread_locale ;
 int _once (int *,int ) ;
 scalar_t__ fake_tls ;
 int init_key ;
 int locale_info_key ;
 int once_control ;
 scalar_t__ pthread_getspecific (int ) ;
 int pthread_setspecific (int ,scalar_t__) ;
 scalar_t__ thread_local_locale ;
 int xlocale_release (struct xlocale_refcounted*) ;
 int xlocale_retain (struct xlocale_refcounted*) ;

__attribute__((used)) static void
set_thread_locale(locale_t loc)
{
 locale_t l = (loc == LC_GLOBAL_LOCALE) ? 0 : loc;

 _once(&once_control, init_key);

 if (((void*)0) != l) {
  xlocale_retain((struct xlocale_refcounted*)l);
 }
 locale_t old = pthread_getspecific(locale_info_key);
 if ((((void*)0) != old) && (l != old)) {
  xlocale_release((struct xlocale_refcounted*)old);
 }
 if (fake_tls) {
  thread_local_locale = l;
 } else {
  pthread_setspecific(locale_info_key, l);
 }

 __thread_locale = l;
 __set_thread_rune_locale(loc);

}
