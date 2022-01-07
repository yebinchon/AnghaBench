
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 int DTOLFP (int ,int *) ;
 int LFPTOD (int *,double) ;
 int LOG_ERR ;
 scalar_t__ L_ISGT (int *,int *) ;
 int L_SUB (int *,int *) ;
 int MAXLOOPS ;
 double MAXSTEP ;
 int MINCHANGES ;
 int MINSTEP ;
 int exit (int) ;
 int get_systime (int *) ;
 long max (long,long) ;
 double min (double,double) ;
 int msyslog (int ,char*) ;
 int set_sys_fuzz (double) ;

double
measure_tick_fuzz(void)
{
 l_fp minstep;
 l_fp val;
 l_fp last;
 l_fp ldiff;
 double tick;
 double diff;
 long repeats;
 long max_repeats;
 int changes;
 int i;

 tick = MAXSTEP;
 max_repeats = 0;
 repeats = 0;
 changes = 0;
 DTOLFP(MINSTEP, &minstep);
 get_systime(&last);
 for (i = 0; i < MAXLOOPS && changes < MINCHANGES; i++) {
  get_systime(&val);
  ldiff = val;
  L_SUB(&ldiff, &last);
  last = val;
  if (L_ISGT(&ldiff, &minstep)) {
   max_repeats = max(repeats, max_repeats);
   repeats = 0;
   changes++;
   LFPTOD(&ldiff, diff);
   tick = min(diff, tick);
  } else {
   repeats++;
  }
 }
 if (changes < MINCHANGES) {
  msyslog(LOG_ERR, "Fatal error: precision could not be measured (MINSTEP too large?)");
  exit(1);
 }

 if (0 == max_repeats) {
  set_sys_fuzz(tick);
 } else {
  set_sys_fuzz(tick / max_repeats);
 }

 return tick;
}
