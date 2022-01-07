
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int l_fp ;


 int DTOLFP (double,int *) ;
 int FALSE ;
 int INSIST (int) ;
 int LOG_ERR ;
 int L_ADD (int *,int *) ;
 int TRUE ;
 int _clear_adjtime () ;
 scalar_t__ allow_panic ;
 int basedate_get_eracenter () ;
 scalar_t__ enable_panic_check ;
 int get_ostime (struct timespec*) ;
 int lamport_violated ;
 struct timeval lfp_stamp_to_tval (int ,int*) ;
 int msyslog (int ,char*) ;
 scalar_t__ ntp_set_tod (struct timeval*,int *) ;
 int step_callback () ;
 int stub1 () ;
 double sys_residual ;
 int tspec_stamp_to_lfp (struct timespec) ;
 int update_uwtmp (struct timeval,struct timeval) ;

int
step_systime(
 double step
 )
{
 time_t pivot;
 struct timeval timetv, tvlast;
 struct timespec timets;
 l_fp fp_ofs, fp_sys;
 pivot = 0x7FFFFFFF;



 DTOLFP(sys_residual, &fp_sys);
 DTOLFP(step, &fp_ofs);
 L_ADD(&fp_ofs, &fp_sys);




 get_ostime(&timets);
 fp_sys = tspec_stamp_to_lfp(timets);
 tvlast.tv_sec = timets.tv_sec;
 tvlast.tv_usec = (timets.tv_nsec + 500) / 1000;


 L_ADD(&fp_sys, &fp_ofs);


 timetv = lfp_stamp_to_tval(fp_sys, &pivot);


 if (ntp_set_tod(&timetv, ((void*)0)) != 0) {
  msyslog(LOG_ERR, "step-systime: %m");
  if (enable_panic_check && allow_panic) {
   msyslog(LOG_ERR, "step_systime: allow_panic is TRUE!");
  }
  return FALSE;
 }



 sys_residual = 0;
 lamport_violated = (step < 0);
 if (step_callback)
  (*step_callback)();
 update_uwtmp(timetv, tvlast);
 if (enable_panic_check && allow_panic) {
  msyslog(LOG_ERR, "step_systime: allow_panic is TRUE!");
  INSIST(!allow_panic);
 }
 return TRUE;
}
