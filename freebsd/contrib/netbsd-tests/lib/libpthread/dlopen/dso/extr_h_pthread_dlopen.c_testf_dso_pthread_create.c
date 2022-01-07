
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int ATF_REQUIRE (int) ;
 int pthread_create (int *,int const*,void* (*) (void*),void*) ;

int
testf_dso_pthread_create(pthread_t *thread, const pthread_attr_t *attr,
    void *(*routine)(void *), void *arg)
{
 int ret;

 ret = pthread_create(thread, attr, routine, arg);
 ATF_REQUIRE(ret == 0);

 return 0;
}
