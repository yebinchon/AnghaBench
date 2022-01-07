
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 int mutex ;
 int once ;
 int once3_cleanup ;
 int once3_ofunc ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_once (int *,int ) ;

__attribute__((used)) static void *
once3_threadfunc(void *arg)
{
 PTHREAD_REQUIRE(pthread_mutex_lock(&mutex));
 pthread_cleanup_push(once3_cleanup, &mutex);
 PTHREAD_REQUIRE(pthread_once(&once, once3_ofunc));
 pthread_cleanup_pop(1);

 return ((void*)0);
}
