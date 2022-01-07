
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct TYPE_14__ {scalar_t__ l_i; } ;
typedef TYPE_1__ l_fp ;


 int DEBUG_REQUIRE (int ) ;
 int DPRINTF (int,char*) ;
 int DTOLFP (double,TYPE_1__*) ;
 int ENTER_GET_SYSTIME_CRITSEC () ;
 int FALSE ;
 int FRAC ;
 int LEAVE_GET_SYSTIME_CRITSEC () ;
 int LOG_ERR ;
 int L_ADD (TYPE_1__*,TYPE_1__*) ;
 int L_ADDUF (TYPE_1__*,int) ;
 int L_ISZERO (TYPE_1__*) ;
 int L_NEG (TYPE_1__*) ;
 int L_SUB (TYPE_1__*,TYPE_1__*) ;
 int L_SUBUF (TYPE_1__*,int) ;
 int USING_SIGIO () ;
 struct timespec add_tspec_ns (struct timespec,int) ;
 scalar_t__ cmp_tspec (struct timespec,struct timespec) ;
 int exit (int) ;
 int get_ostime (struct timespec*) ;
 int lamport_violated ;
 int lfptoa (TYPE_1__*,int) ;
 int msyslog (int ,char*,scalar_t__) ;
 int ntp_random () ;
 struct timespec sub_tspec (struct timespec,struct timespec) ;
 int sys_fuzz ;
 int sys_fuzz_nsec ;
 int sys_lamport ;
 int sys_tsrounding ;
 int systime_init_done ;
 TYPE_1__ tspec_stamp_to_lfp (struct timespec) ;

void
get_systime(
 l_fp *now
 )
{
        static struct timespec ts_last;
 static struct timespec ts_prev;
 static l_fp lfp_prev;
 struct timespec ts;
 struct timespec ts_min;
 struct timespec ts_lam;
 double dfuzz;
 l_fp result;
 l_fp lfpfuzz;
 l_fp lfpdelta;

 get_ostime(&ts);
 DEBUG_REQUIRE(systime_init_done);
 ENTER_GET_SYSTIME_CRITSEC();
        if (cmp_tspec(add_tspec_ns(ts, 50000000), ts_last) < 0) {
                lamport_violated = 1;
                sys_lamport++;
 }
        ts_last = ts;
 if (!USING_SIGIO()) {
  ts_min = add_tspec_ns(ts_prev, sys_fuzz_nsec);
  if (cmp_tspec(ts, ts_min) < 0) {
   ts_lam = sub_tspec(ts_min, ts);
   if (ts_lam.tv_sec > 0 && !lamport_violated) {
    msyslog(LOG_ERR,
     "get_systime Lamport advance exceeds one second (%.9f)",
     ts_lam.tv_sec +
         1e-9 * ts_lam.tv_nsec);
    exit(1);
   }
   if (!lamport_violated)
    ts = ts_min;
  }
  ts_prev = ts;
 }


 result = tspec_stamp_to_lfp(ts);






 dfuzz = ntp_random() * 2. / FRAC * sys_fuzz;
 DTOLFP(dfuzz, &lfpfuzz);
 L_ADD(&result, &lfpfuzz);
 if (!USING_SIGIO()) {
  if ( !L_ISZERO(&lfp_prev)
      && !lamport_violated
      && (sys_fuzz > 0.0)
     ) {
   lfpdelta = result;
   L_SUB(&lfpdelta, &lfp_prev);
   L_SUBUF(&lfpdelta, 1);
   if (lfpdelta.l_i < 0)
   {
    L_NEG(&lfpdelta);
    DPRINTF(1, ("get_systime: postcond failed by %s secs, fixed\n",
         lfptoa(&lfpdelta, 9)));
    result = lfp_prev;
    L_ADDUF(&result, 1);
    sys_tsrounding++;
   }
  }
  lfp_prev = result;
  if (lamport_violated)
   lamport_violated = FALSE;
 }
 LEAVE_GET_SYSTIME_CRITSEC();
 *now = result;
}
