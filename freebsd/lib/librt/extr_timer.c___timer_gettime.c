
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* timer_t ;
struct itimerspec {int dummy; } ;
struct TYPE_3__ {int oshandle; } ;


 int __sys_ktimer_gettime (int ,struct itimerspec*) ;

int
__timer_gettime(timer_t timerid, struct itimerspec *value)
{

 return __sys_ktimer_gettime(timerid->oshandle, value);
}
