
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int __UNCONST (char*) ;
 int _exit (int) ;
 int dlclose_cookie ;
 int init_fini_helper ;
 int printf (char*,int) ;
 int pthread_create (int *,int *,int ,int ) ;
 int sleep (int) ;
 int sleep_fini ;
 scalar_t__ sleep_init ;

__attribute__((used)) static void
test_dlclose(void)
{
 pthread_t t1, t2;
 sleep_init = 0;
 sleep_fini = 1;
 printf("%d\n", dlclose_cookie);
 pthread_create(&t1, ((void*)0), init_fini_helper,
     __UNCONST("libh_helper_dso2.so"));
 sleep(1);
 printf("%d\n", dlclose_cookie);
 if (dlclose_cookie != 2)
  _exit(1);
 pthread_create(&t2, ((void*)0), init_fini_helper,
     __UNCONST("libutil.so"));
 sleep(1);
 printf("%d\n", dlclose_cookie);
 if (dlclose_cookie != 2)
  _exit(1);
 _exit(0);
}
