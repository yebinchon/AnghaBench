
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;


 int FALSE ;
 int INSIST (int) ;
 int LOG_ERR ;
 int TRUE ;
 scalar_t__ adjtime (struct timeval*,struct timeval*) ;
 scalar_t__ allow_panic ;
 scalar_t__ enable_panic_check ;
 int msyslog (int ,char*) ;
 double sys_fuzz ;
 double sys_residual ;
 double sys_tick ;

int
adj_systime(
 double now
 )
{
 struct timeval adjtv;
 struct timeval oadjtv;
 double quant;
 double dtemp;
 long ticks;
 int isneg = 0;
 if (0. == now) {
  if (enable_panic_check && allow_panic) {
   msyslog(LOG_ERR, "adj_systime: allow_panic is TRUE!");
   INSIST(!allow_panic);
  }
  return TRUE;
 }







 dtemp = now + sys_residual;
 if (dtemp < 0) {
  isneg = 1;
  dtemp = -dtemp;
 }
 adjtv.tv_sec = (long)dtemp;
 dtemp -= adjtv.tv_sec;
 if (sys_tick > sys_fuzz)
  quant = sys_tick;
 else
  quant = 1e-6;
 ticks = (long)(dtemp / quant + .5);
 adjtv.tv_usec = (long)(ticks * quant * 1.e6 + .5);




 if (adjtv.tv_usec >= 1000000) {
  adjtv.tv_sec += 1;
  adjtv.tv_usec -= 1000000;
  dtemp -= 1.;
 }

 sys_residual = dtemp - adjtv.tv_usec * 1.e-6;






 if (isneg) {
  adjtv.tv_sec = -adjtv.tv_sec;
  adjtv.tv_usec = -adjtv.tv_usec;
  sys_residual = -sys_residual;
 }
 if (adjtv.tv_sec != 0 || adjtv.tv_usec != 0) {
  if (adjtime(&adjtv, &oadjtv) < 0) {
   msyslog(LOG_ERR, "adj_systime: %m");
   if (enable_panic_check && allow_panic) {
    msyslog(LOG_ERR, "adj_systime: allow_panic is TRUE!");
   }
   return FALSE;
  }
 }
 if (enable_panic_check && allow_panic) {
  msyslog(LOG_ERR, "adj_systime: allow_panic is TRUE!");
 }
 return TRUE;
}
