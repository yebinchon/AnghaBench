
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 int cond ;
 int mutex ;
 int pthread_cleanup_pop (int ) ;
 int pthread_cleanup_push (int ,int *) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int share ;
 int unlock ;

__attribute__((used)) static void *
destroy_after_cancel_threadfunc(void *arg)
{
 PTHREAD_REQUIRE(pthread_mutex_lock(&mutex));

 pthread_cleanup_push(unlock, &mutex);

 while (1) {
  share = 1;
  PTHREAD_REQUIRE(pthread_cond_broadcast(&cond));
  PTHREAD_REQUIRE(pthread_cond_wait(&cond, &mutex));
 }

 pthread_cleanup_pop(0);
 PTHREAD_REQUIRE(pthread_mutex_unlock(&mutex));

 return ((void*)0);
}
