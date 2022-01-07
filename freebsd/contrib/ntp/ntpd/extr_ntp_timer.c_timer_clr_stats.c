
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_time ;
 scalar_t__ timer_overflows ;
 int timer_timereset ;
 scalar_t__ timer_xmtcalls ;

void
timer_clr_stats(void)
{
 timer_overflows = 0;
 timer_xmtcalls = 0;
 timer_timereset = current_time;
}
