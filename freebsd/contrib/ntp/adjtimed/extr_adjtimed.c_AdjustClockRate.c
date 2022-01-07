
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {long tv_sec; long tv_usec; } ;
struct TYPE_4__ {long tv_sec; long tv_usec; } ;
struct TYPE_3__ {long tv_sec; long tv_usec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int ITIMER_REAL ;
 int LOG_ERR ;
 int LOG_INFO ;
 long MILLION ;
 int SetClockRate (scalar_t__) ;
 scalar_t__ default_rate ;
 int msyslog (int ,char*,...) ;
 long oldrate ;
 int perror (char*) ;
 int printf (char*,long,...) ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;
 long slew_rate ;
 int sysdebug ;
 long tick_rate ;
 int verbose ;

int
AdjustClockRate(
 register struct timeval *delta,
 register struct timeval *olddelta
 )
{
 register long rate, dt, leftover;
 struct itimerval period, remains;

 dt = (delta->tv_sec * MILLION) + delta->tv_usec;

 if (verbose)
     printf("adjtimed: new correction %.6fs\n", (double)dt / (double)MILLION);
 if (sysdebug)
     msyslog(LOG_INFO, "new correction %.6fs", (double)dt / (double)MILLION);
 if (verbose > 2) printf("adjtimed: leftover %ldus\n", leftover);
 if (sysdebug > 2) msyslog(LOG_INFO, "leftover %ldus", leftover);
 rate = dt;




 if (dt > 0) {
  rate = slew_rate;
 } else {
  rate = -slew_rate;
  dt = -dt;
 }
 period.it_value.tv_sec = dt / slew_rate;
 period.it_value.tv_usec = (dt % slew_rate) * (MILLION / slew_rate);







 if (verbose > 1)
     printf("adjtimed: will be complete in %lds %ldus\n",
     period.it_value.tv_sec, period.it_value.tv_usec);
 if (sysdebug > 1)
     msyslog(LOG_INFO, "will be complete in %lds %ldus",
      period.it_value.tv_sec, period.it_value.tv_usec);



 if (dt) {
  if (SetClockRate((rate / tick_rate) + default_rate) == -1) {
   msyslog(LOG_ERR, "set clock rate: %m");
   perror("adjtimed: set clock rate");
  }
 }




 period.it_interval.tv_sec = period.it_interval.tv_usec = 0L;
 setitimer(ITIMER_REAL, &period, &remains);



 if (olddelta) {
  dt = ((remains.it_value.tv_sec * MILLION) + remains.it_value.tv_usec) *
   oldrate;
  olddelta->tv_sec = dt / MILLION;
  olddelta->tv_usec = dt - (olddelta->tv_sec * MILLION);
 }

 oldrate = (double)rate / (double)MILLION;
 return(0);
}
