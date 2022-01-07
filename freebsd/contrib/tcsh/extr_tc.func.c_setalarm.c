
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct varent {int ** vec; } ;
typedef int Char ;


 int CLK_TCK ;
 int STRautologout ;
 struct varent* adrof (int ) ;
 int alarm (unsigned int) ;
 int alm_fun ;
 scalar_t__ alrmcatch_disabled ;
 scalar_t__ atoi (int ) ;
 int auto_lock ;
 int auto_logout ;
 int sched_next () ;
 int sched_run ;
 int short2str (int *) ;
 int time (int*) ;

void
setalarm(int lck)
{
    struct varent *vp;
    Char *cp;
    unsigned alrm_time = 0, logout_time, lock_time;
    time_t cl, nl, sched_dif;

    if ((vp = adrof(STRautologout)) != ((void*)0) && vp->vec != ((void*)0)) {
 if ((cp = vp->vec[0]) != 0) {
     if ((logout_time = (unsigned) atoi(short2str(cp)) * 60) > 0) {
  alrm_time = logout_time;
  alm_fun = auto_logout;
     }
 }
 if ((cp = vp->vec[1]) != 0) {
     if ((lock_time = (unsigned) atoi(short2str(cp)) * 60) > 0) {
  if (lck) {
      if (alrm_time == 0 || lock_time < alrm_time) {
   alrm_time = lock_time;
   alm_fun = auto_lock;
      }
  }
  else
      if (alrm_time)
   alrm_time -= lock_time;
     }
 }
    }
    if ((nl = sched_next()) != -1) {
 (void) time(&cl);
 sched_dif = nl > cl ? nl - cl : 0;
 if ((alrm_time == 0) || ((unsigned) sched_dif < alrm_time)) {
     alrm_time = ((unsigned) sched_dif) + 1;
     alm_fun = sched_run;
 }
    }
    alrmcatch_disabled = 0;
    (void) alarm(alrm_time);
}
