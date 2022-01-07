
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 int printf (char*,...) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int static_cond ;
 int static_mutex ;

__attribute__((used)) static void *
signal_before_unlock_static_init_threadfunc(void *arg)
{
 int *shared = (int *) arg;

 printf("2: Second thread.\n");

 printf("2: Locking mutex\n");
 PTHREAD_REQUIRE(pthread_mutex_lock(&static_mutex));
 printf("2: Got mutex.\n");
 printf("Shared value: %d. Changing to 0.\n", *shared);
 *shared = 0;


 PTHREAD_REQUIRE(pthread_cond_signal(&static_cond));
 PTHREAD_REQUIRE(pthread_mutex_unlock(&static_mutex));

 return ((void*)0);
}
