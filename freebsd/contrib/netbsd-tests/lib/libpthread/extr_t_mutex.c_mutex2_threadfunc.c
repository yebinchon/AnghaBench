
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTHREAD_REQUIRE (int ) ;
 int global_x ;
 int mutex ;
 int mutex_lock (int *,int *) ;
 int printf (char*,int ,long) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_self () ;
 int ts_lengthy ;

__attribute__((used)) static void *
mutex2_threadfunc(void *arg)
{
 long count = *(int *)arg;

 printf("2: Second thread (%p). Count is %ld\n", pthread_self(), count);

 while (count--) {
  PTHREAD_REQUIRE(mutex_lock(&mutex, &ts_lengthy));
  global_x++;
  PTHREAD_REQUIRE(pthread_mutex_unlock(&mutex));
 }

 return (void *)count;
}
