
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct TYPE_3__ {int denom; int numer; int member_0; } ;
typedef TYPE_1__ mach_timebase_info_data_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_MONOTONIC_FAST ;
 int clock_gettime (int ,struct timespec*) ;
 int mach_absolute_time () ;
 int mach_timebase_info (TYPE_1__*) ;

void
timepoint_steady(
 struct timespec *ts)
{
 (void)clock_gettime(CLOCK_MONOTONIC, ts);


}
