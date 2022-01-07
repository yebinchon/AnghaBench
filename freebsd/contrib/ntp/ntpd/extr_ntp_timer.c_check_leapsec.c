
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int32 ;
typedef scalar_t__ u_int ;
typedef int time_t ;
typedef int lsdata ;
struct TYPE_7__ {int Q_s; } ;
struct TYPE_8__ {double tai_diff; double warped; scalar_t__ tai_offs; scalar_t__ proximity; scalar_t__ dynamic; TYPE_1__ ttime; int ddist; } ;
typedef TYPE_2__ leap_result_t ;
struct TYPE_9__ {int enabled; int in_progress; double doffset; int interval; int intv_end; int intv_start; int offset; } ;


 int DPRINTF (int,char*) ;
 int DTOLFP (double,int *) ;
 int EVNT_ARMED ;
 int EVNT_DISARMED ;
 int EVNT_LEAP ;
 int FALSE ;
 int LOG_NOTICE ;
 scalar_t__ LSPROX_ALERT ;
 scalar_t__ LSPROX_NOWARN ;
 scalar_t__ LSPROX_SCHEDULE ;
 double M_PI ;
 int PEVNT_ARMED ;
 int TRUE ;
 int check_leap_sec_in_progress (TYPE_2__*) ;
 double clock_max_back ;
 double clock_max_fwd ;
 double cos (double) ;
 int crypto_update_taichange () ;
 scalar_t__ kern_enable ;
 TYPE_5__ leap_smear ;
 scalar_t__ leap_smear_intv ;
 double leapdif ;
 scalar_t__ leapsec ;
 int leapsec_electric (int) ;
 int leapsec_query (TYPE_2__*,scalar_t__,int const*) ;
 int leapsec_reset_frame () ;
 int memset (TYPE_2__*,int ,int) ;
 int msyslog (int ,char*,...) ;
 scalar_t__ pll_control ;
 int report_event (int ,int *,int *) ;
 int step_systime (double) ;
 int * sys_peer ;
 scalar_t__ sys_tai ;

__attribute__((used)) static void
check_leapsec(
 u_int32 now ,
 const time_t * tpiv ,
        int reset)
{
 static const char leapmsg_p_step[] =
     "Positive leap second, stepped backward.";
 static const char leapmsg_p_slew[] =
     "Positive leap second, no step correction. "
     "System clock will be inaccurate for a long time.";

 static const char leapmsg_n_step[] =
     "Negative leap second, stepped forward.";
 static const char leapmsg_n_slew[] =
     "Negative leap second, no step correction. "
     "System clock will be inaccurate for a long time.";

 leap_result_t lsdata;
 u_int32 lsprox;
 leapsec_electric(0);





 if (reset) {
  lsprox = LSPROX_NOWARN;
  leapsec_reset_frame();
  memset(&lsdata, 0, sizeof(lsdata));
 } else {
   int fired;

   fired = leapsec_query(&lsdata, now, tpiv);

   DPRINTF(3, ("*** leapsec_query: fired %i, now %u (0x%08X), tai_diff %i, ddist %u\n",
    fired, now, now, lsdata.tai_diff, lsdata.ddist));
   if (fired) {



  const char *leapmsg = ((void*)0);
  double lswarp = lsdata.warped;
  if (lswarp < 0.0) {
   if (clock_max_back > 0.0 &&
       clock_max_back < -lswarp) {
    step_systime(lswarp);
    leapmsg = leapmsg_p_step;
   } else {
    leapmsg = leapmsg_p_slew;
   }
  } else if (lswarp > 0.0) {
   if (clock_max_fwd > 0.0 &&
       clock_max_fwd < lswarp) {
    step_systime(lswarp);
    leapmsg = leapmsg_n_step;
   } else {
    leapmsg = leapmsg_n_slew;
   }
  }
  if (leapmsg)
   msyslog(LOG_NOTICE, "%s", leapmsg);
  report_event(EVNT_LEAP, ((void*)0), ((void*)0));



  lsprox = LSPROX_NOWARN;
  leapsec = LSPROX_NOWARN;
  sys_tai = lsdata.tai_offs;
   } else {



    lsprox = lsdata.proximity;
    sys_tai = lsdata.tai_offs;
   }
 }
 if ( (leapsec > 0 || lsprox < LSPROX_ALERT)
     && leapsec < lsprox ) {
  if ( leapsec < LSPROX_SCHEDULE
                   && lsprox >= LSPROX_SCHEDULE) {
   if (lsdata.dynamic)
    report_event(PEVNT_ARMED, sys_peer, ((void*)0));
   else
    report_event(EVNT_ARMED, ((void*)0), ((void*)0));
  }
  leapsec = lsprox;
 }
 if (leapsec > lsprox) {
  if ( leapsec >= LSPROX_SCHEDULE
                   && lsprox < LSPROX_SCHEDULE) {
   report_event(EVNT_DISARMED, ((void*)0), ((void*)0));
  }
  leapsec = lsprox;
 }

 if (leapsec >= LSPROX_SCHEDULE)
  leapdif = lsdata.tai_diff;
 else
  leapdif = 0;

 check_leap_sec_in_progress(&lsdata);





}
