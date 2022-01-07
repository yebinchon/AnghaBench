
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int PTHREAD_REQUIRE (int ) ;
 int after_barrier_count ;
 int barrier ;
 int mutex ;
 int printf (char*,int,...) ;
 int pthread_barrier_wait (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int serial_count ;

__attribute__((used)) static void *
threadfunc(void *arg)
{
 int which = (int)(long)arg;
 int rv;

 printf("thread %d entering barrier\n", which);
 rv = pthread_barrier_wait(&barrier);
 printf("thread %d leaving barrier -> %d\n", which, rv);

 PTHREAD_REQUIRE(pthread_mutex_lock(&mutex));
 after_barrier_count++;
 if (rv == PTHREAD_BARRIER_SERIAL_THREAD)
  serial_count++;
 PTHREAD_REQUIRE(pthread_mutex_unlock(&mutex));

 return ((void*)0);
}
