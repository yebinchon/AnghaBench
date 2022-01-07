
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 int _once (int *,int ) ;
 scalar_t__ fake_tls ;
 int init_key ;
 int locale_info_key ;
 int once_control ;
 int pthread_getspecific (int ) ;
 int thread_local_locale ;

__attribute__((used)) static locale_t
get_thread_locale(void)
{

 _once(&once_control, init_key);

 return (fake_tls ? thread_local_locale :
  pthread_getspecific(locale_info_key));
}
