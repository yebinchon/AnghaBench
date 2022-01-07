
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* timer_t ;
struct TYPE_3__ {int oshandle; } ;


 int __sys_ktimer_getoverrun (int ) ;

int
__timer_getoverrun(timer_t timerid)
{

 return __sys_ktimer_getoverrun(timerid->oshandle);
}
