
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __detect_path_locale () ;
 int __has_thread_locale ;
 int fake_tls ;
 int locale_info_key ;
 void* pthread_getspecific (int ) ;
 int pthread_key_create (int *,int ) ;
 int pthread_setspecific (int ,void*) ;
 int xlocale_release ;

__attribute__((used)) static void init_key(void)
{

 pthread_key_create(&locale_info_key, xlocale_release);
 pthread_setspecific(locale_info_key, (void*)42);
 if (pthread_getspecific(locale_info_key) == (void*)42) {
  pthread_setspecific(locale_info_key, 0);
 } else {
  fake_tls = 1;
 }

 __has_thread_locale = 1;
 __detect_path_locale();
}
