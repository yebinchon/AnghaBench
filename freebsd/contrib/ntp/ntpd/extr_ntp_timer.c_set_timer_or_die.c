
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intervaltimer ;


 int ITIMER_REAL ;
 int LOG_ERR ;
 int exit (int) ;
 int itimer ;
 int msyslog (int ,char*,char const*) ;
 int setitimer (int ,int *,int *) ;
 int timer_id ;
 int timer_settime (int ,int ,int *,int *) ;

void
set_timer_or_die(
 const intervaltimer * ptimer
 )
{
 const char * setfunc;
 int rc;





 setfunc = "setitimer";
 rc = setitimer(ITIMER_REAL, &itimer, ((void*)0));

 if (-1 == rc) {
  msyslog(LOG_ERR, "interval timer %s failed, %m",
   setfunc);
  exit(1);
 }
}
