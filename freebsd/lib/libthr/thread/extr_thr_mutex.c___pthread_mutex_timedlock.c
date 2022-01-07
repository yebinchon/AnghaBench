
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct pthread_mutex {int dummy; } ;
typedef int pthread_mutex_t ;


 int _thr_check_init () ;
 int check_and_init_mutex (int *,struct pthread_mutex**) ;
 int mutex_lock_common (struct pthread_mutex*,struct timespec const*,int,int) ;

int
__pthread_mutex_timedlock(pthread_mutex_t * __restrict mutex,
    const struct timespec * __restrict abstime)
{
 struct pthread_mutex *m;
 int ret;

 _thr_check_init();
 ret = check_and_init_mutex(mutex, &m);
 if (ret == 0)
  ret = mutex_lock_common(m, abstime, 0, 0);
 return (ret);
}
