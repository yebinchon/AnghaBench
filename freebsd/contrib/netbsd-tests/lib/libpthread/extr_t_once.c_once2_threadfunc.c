
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATF_REQUIRE_EQ (int,int) ;
 int PTHREAD_REQUIRE (int ) ;
 int once ;
 int once2_ofunc ;
 int printf (char*,int,int) ;
 int pthread_once (int *,int ) ;
 int x ;

__attribute__((used)) static void *
once2_threadfunc(void *arg)
{
 int num;

 PTHREAD_REQUIRE(pthread_once(&once, once2_ofunc));

 num = *(int *)arg;
 printf("Thread %d sees x with value %d\n", num, x);
 ATF_REQUIRE_EQ(x, 2);

 return ((void*)0);
}
