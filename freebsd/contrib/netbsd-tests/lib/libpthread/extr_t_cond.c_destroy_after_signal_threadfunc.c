
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 int cond ;
 int mutex ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int share ;

__attribute__((used)) static void *
destroy_after_signal_threadfunc(void *arg)
{
 PTHREAD_REQUIRE(pthread_mutex_lock(&mutex));

 share = 1;
 PTHREAD_REQUIRE(pthread_cond_broadcast(&cond));
 PTHREAD_REQUIRE(pthread_cond_wait(&cond, &mutex));

 PTHREAD_REQUIRE(pthread_mutex_unlock(&mutex));

 return ((void*)0);
}
