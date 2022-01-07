
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int CLOCK_REALTIME ;
 int GETTIMEOFDAY (struct timeval*,int *) ;
 int LOG_ERR ;
 int TIMEOFDAY ;
 int clock_gettime (int ,struct timespec*) ;
 int errno ;
 int exit (int) ;
 int getclock (int ,struct timespec*) ;
 int msyslog (int ,char*,int ) ;
 int sys_tick ;
 scalar_t__ trunc_os_clock ;

__attribute__((used)) static inline void
get_ostime(
 struct timespec * tsp
 )
{
 int rc;
 long ticks;






 struct timeval tv;

 rc = GETTIMEOFDAY(&tv, ((void*)0));
 tsp->tv_sec = tv.tv_sec;
 tsp->tv_nsec = tv.tv_usec * 1000;

 if (rc < 0) {
  msyslog(LOG_ERR, "read system clock failed: %m (%d)",
   errno);
  exit(1);
 }

 if (trunc_os_clock) {
  ticks = (long)((tsp->tv_nsec * 1e-9) / sys_tick);
  tsp->tv_nsec = (long)(ticks * 1e9 * sys_tick);
 }
}
