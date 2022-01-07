
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 scalar_t__ count ;
 int printf (char*) ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int static_cond ;
 int static_mutex ;
 int toggle ;
 int total ;

__attribute__((used)) static void *
signal_wait_race_threadfunc(void *arg)
{
 printf("2: Second thread.\n");
 PTHREAD_REQUIRE(pthread_mutex_lock(&static_mutex));
 printf("2: Before the loop.\n");
 while (count>0) {
  count--;
  total++;
  toggle = 0;

  PTHREAD_REQUIRE(pthread_cond_signal(&static_cond));
  do {
   PTHREAD_REQUIRE(pthread_cond_wait(&static_cond,
       &static_mutex));
  } while (toggle != 1);
 }
 printf("2: After the loop.\n");
 PTHREAD_REQUIRE(pthread_mutex_unlock(&static_mutex));

 return ((void*)0);
}
