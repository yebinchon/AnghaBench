
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 int cond ;
 int mutex ;
 int printf (char*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sleep (int) ;
 int started ;

__attribute__((used)) static void *
threadfunc(void *arg)
{
 printf("2: Second thread.\n");

 printf("2: Locking mutex\n");
 PTHREAD_REQUIRE(pthread_mutex_lock(&mutex));
 printf("2: Got mutex.\n");
 started++;

 PTHREAD_REQUIRE(pthread_mutex_unlock(&mutex));
 PTHREAD_REQUIRE(pthread_cond_signal(&cond));
 sleep(1);

 return ((void*)0);
}
