
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LINUX_TIMER_ABSTIME ;
 int TIMER_ABSTIME ;

int
linux_to_native_timerflags(int *nflags, int flags)
{

 if (flags & ~LINUX_TIMER_ABSTIME)
  return (EINVAL);
 *nflags = 0;
 if (flags & LINUX_TIMER_ABSTIME)
  *nflags |= TIMER_ABSTIME;
 return (0);
}
