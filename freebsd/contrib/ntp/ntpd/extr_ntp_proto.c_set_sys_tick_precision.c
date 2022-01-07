
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s_char ;


 int LOG_ERR ;
 int LOG_NOTICE ;
 int TRUE ;
 double measured_tick ;
 int msyslog (int ,char*,double,...) ;
 scalar_t__ sys_precision ;
 double sys_tick ;
 int trunc_os_clock ;

void
set_sys_tick_precision(
 double tick
 )
{
 int i;

 if (tick > 1.) {
  msyslog(LOG_ERR,
   "unsupported tick %.3f > 1s ignored", tick);
  return;
 }
 if (tick < measured_tick) {
  msyslog(LOG_ERR,
   "proto: tick %.3f less than measured tick %.3f, ignored",
   tick, measured_tick);
  return;
 } else if (tick > measured_tick) {
  trunc_os_clock = TRUE;
  msyslog(LOG_NOTICE,
   "proto: truncating system clock to multiples of %.9f",
   tick);
 }
 sys_tick = tick;




 for (i = 0; tick <= 1; i--)
  tick *= 2;
 if (tick - 1 > 1 - tick / 2)
  i++;

 sys_precision = (s_char)i;
}
