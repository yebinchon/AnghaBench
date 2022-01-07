
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;


 int ATF_REQUIRE (int) ;
 uintptr_t STACKSIZE ;
 int error ;
 scalar_t__ pthread_attr_destroy (int *) ;
 scalar_t__ pthread_attr_get_np (int ,int *) ;
 scalar_t__ pthread_attr_getstacksize (int *,size_t*) ;
 int pthread_attr_init (int *) ;
 int pthread_exit (void*) ;
 int pthread_self () ;

__attribute__((used)) static void *
threadfunc2(void *arg)
{
 static uintptr_t i = 0;
 uintptr_t j;
 pthread_attr_t attr;
 size_t stacksize;

 j = (uintptr_t)arg;




 ATF_REQUIRE(pthread_attr_get_np(pthread_self(), &attr) == 0);
 ATF_REQUIRE(pthread_attr_getstacksize(&attr, &stacksize) == 0);
 ATF_REQUIRE(stacksize == STACKSIZE * (j + 1));
 ATF_REQUIRE(pthread_attr_destroy(&attr) == 0);

 if (i++ == j)
  error = 0;

 pthread_exit((void *)i);

 return ((void*)0);
}
