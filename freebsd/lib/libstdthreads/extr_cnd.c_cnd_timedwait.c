
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int mtx_t ;
typedef int cnd_t ;



 int pthread_cond_timedwait (int *,int *,struct timespec const*) ;
 int thrd_error ;
 int thrd_success ;
 int thrd_timedout ;

int
cnd_timedwait(cnd_t *restrict cond, mtx_t *restrict mtx,
    const struct timespec *restrict ts)
{

 switch (pthread_cond_timedwait(cond, mtx, ts)) {
 case 0:
  return (thrd_success);
 case 128:
  return (thrd_timedout);
 default:
  return (thrd_error);
 }
}
