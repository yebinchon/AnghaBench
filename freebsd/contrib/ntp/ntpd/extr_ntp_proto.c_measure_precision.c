
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 int measure_tick_fuzz () ;
 int measured_tick ;
 int msyslog (int ,char*,int,...) ;
 int set_sys_fuzz (int) ;
 int set_sys_tick_precision (int ) ;
 int sys_fuzz ;
 int sys_precision ;
 int sys_tick ;
 int trunc_os_clock ;

void
measure_precision(void)
{





 set_sys_fuzz(0.);
 trunc_os_clock = FALSE;
 measured_tick = measure_tick_fuzz();
 set_sys_tick_precision(measured_tick);
 msyslog(LOG_INFO, "proto: precision = %.3f usec (%d)",
  sys_tick * 1e6, sys_precision);
 if (sys_fuzz < sys_tick) {
  msyslog(LOG_NOTICE, "proto: fuzz beneath %.3f usec",
   sys_fuzz * 1e6);
 }
}
