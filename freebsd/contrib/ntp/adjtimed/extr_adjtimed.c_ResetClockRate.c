
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tv_sec; long tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;


 scalar_t__ GetClockRate () ;
 int ITIMER_REAL ;
 int LOG_ERR ;
 int LOG_INFO ;
 int SetClockRate (scalar_t__) ;
 scalar_t__ default_rate ;
 int msyslog (int ,char*) ;
 double oldrate ;
 int perror (char*) ;
 int puts (char*) ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 int sysdebug ;
 int verbose ;

void
ResetClockRate(void)
{
 struct itimerval it;

 it.it_value.tv_sec = it.it_value.tv_usec = 0L;
 setitimer(ITIMER_REAL, &it, (struct itimerval *)0);

 if (verbose > 2) puts("adjtimed: resetting the clock");
 if (sysdebug > 2) msyslog(LOG_INFO, "resetting the clock");

 if (GetClockRate() != default_rate) {
  if (SetClockRate(default_rate) == -1) {
   msyslog(LOG_ERR, "set clock rate: %m");
   perror("adjtimed: set clock rate");
  }
 }

 oldrate = 0.0;
}
