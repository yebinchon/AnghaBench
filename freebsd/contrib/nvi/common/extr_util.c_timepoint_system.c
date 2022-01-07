
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef scalar_t__ kern_return_t ;
typedef int clock_serv_t ;


 int CALENDAR_CLOCK ;
 int CLOCK_REALTIME ;
 int CLOCK_REALTIME_FAST ;
 scalar_t__ KERN_SUCCESS ;
 int clock_get_time (int ,TYPE_1__*) ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ host_get_clock_service (int ,int ,int *) ;
 int mach_host_self () ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

void
timepoint_system(
 struct timespec *ts)
{
 (void)clock_gettime(CLOCK_REALTIME, ts);


}
