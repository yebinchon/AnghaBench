
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETIMEDOUT ;
 int PTHREAD_REQUIRE_STATUS (int ,int ) ;
 int mutex ;
 int mutex_lock (int *,int *) ;
 int printf (char*) ;
 int ts_shortlived ;

__attribute__((used)) static void *
timedmtx_thrdfunc(void *arg)
{
 printf("Before endeavor to reacquire timed-mutex (timeout expected)\n");
 PTHREAD_REQUIRE_STATUS(mutex_lock(&mutex, &ts_shortlived),
     ETIMEDOUT);

 return ((void*)0);
}
