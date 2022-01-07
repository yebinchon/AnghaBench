
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* timer_t ;
struct itimerspec {int dummy; } ;
struct TYPE_3__ {int oshandle; } ;


 int __sys_ktimer_settime (int ,int,struct itimerspec const*,struct itimerspec*) ;

int
__timer_settime(timer_t timerid, int flags,
 const struct itimerspec *__restrict value,
 struct itimerspec *__restrict ovalue)
{

 return __sys_ktimer_settime(timerid->oshandle,
  flags, value, ovalue);
}
