
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct pthread_mutex {int m_count; int m_flags; } ;


 int CLOCK_REALTIME ;
 int EAGAIN ;
 int EDEADLK ;
 int EINVAL ;
 int ETIMEDOUT ;
 int PMUTEX_TYPE (int ) ;




 int TIMESPEC_SUB (struct timespec*,struct timespec const*,struct timespec*) ;
 int __sys_nanosleep (struct timespec*,int *) ;
 int clock_gettime (int ,struct timespec*) ;

__attribute__((used)) static int
mutex_self_lock(struct pthread_mutex *m, const struct timespec *abstime)
{
 struct timespec ts1, ts2;
 int ret;

 switch (PMUTEX_TYPE(m->m_flags)) {
 case 130:
 case 131:
  if (abstime) {
   if (abstime->tv_sec < 0 || abstime->tv_nsec < 0 ||
       abstime->tv_nsec >= 1000000000) {
    ret = EINVAL;
   } else {
    clock_gettime(CLOCK_REALTIME, &ts1);
    TIMESPEC_SUB(&ts2, abstime, &ts1);
    __sys_nanosleep(&ts2, ((void*)0));
    ret = ETIMEDOUT;
   }
  } else {




   ret = EDEADLK;
  }
  break;

 case 129:




  ret = 0;
  if (abstime) {
   if (abstime->tv_sec < 0 || abstime->tv_nsec < 0 ||
       abstime->tv_nsec >= 1000000000) {
    ret = EINVAL;
   } else {
    clock_gettime(CLOCK_REALTIME, &ts1);
    TIMESPEC_SUB(&ts2, abstime, &ts1);
    __sys_nanosleep(&ts2, ((void*)0));
    ret = ETIMEDOUT;
   }
  } else {
   ts1.tv_sec = 30;
   ts1.tv_nsec = 0;
   for (;;)
    __sys_nanosleep(&ts1, ((void*)0));
  }
  break;

 case 128:

  if (m->m_count + 1 > 0) {
   m->m_count++;
   ret = 0;
  } else
   ret = EAGAIN;
  break;

 default:

  ret = EINVAL;
 }

 return (ret);
}
