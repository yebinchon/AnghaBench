
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; } ;


 int ATF_REQUIRE (int) ;
 int CLOCK_REALTIME ;
 int ETIMEDOUT ;
 int PTHREAD_REQUIRE (int ) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int memset (struct timespec*,int ,int) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_exit (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int static_cond ;
 int static_mutex ;

__attribute__((used)) static void *
pthread_cond_timedwait_func(void *arg)
{
 struct timespec ts;
 size_t i = 0;
 int rv;

 for (;;) {

  if (i++ >= 10000)
   pthread_exit(((void*)0));

  (void)memset(&ts, 0, sizeof(struct timespec));

  ATF_REQUIRE(clock_gettime(CLOCK_REALTIME, &ts) == 0);






  ts.tv_sec = ts.tv_sec - 1;

  PTHREAD_REQUIRE(pthread_mutex_lock(&static_mutex));
  rv = pthread_cond_timedwait(&static_cond, &static_mutex, &ts);





  ATF_REQUIRE(rv == ETIMEDOUT);
  PTHREAD_REQUIRE(pthread_mutex_unlock(&static_mutex));
 }
}
