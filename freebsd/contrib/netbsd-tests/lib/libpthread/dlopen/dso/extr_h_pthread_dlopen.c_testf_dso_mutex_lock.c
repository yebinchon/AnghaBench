
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int ATF_REQUIRE (int) ;
 scalar_t__ pthread_mutex_lock (int *) ;

int
testf_dso_mutex_lock(pthread_mutex_t *mtx)
{
 ATF_REQUIRE(mtx != ((void*)0));
 ATF_REQUIRE(pthread_mutex_lock(mtx) == 0);

 return 0xcafe;
}
