
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct event_base {int dummy; } ;
typedef int latest ;


 int CLOCK_MONOTONIC ;
 int LOG_ERR ;
 int TRACE (int,char*) ;
 int TRUE ;
 struct timeval add_tval (struct timeval,struct timeval) ;
 int clock_gettime (int ,struct timespec*) ;
 int debug ;
 int event_base_gettimeofday_cached (struct event_base*,struct timeval*) ;
 int exit (int) ;
 int gettimeofday (struct timeval*,int *) ;
 int labs (long) ;
 int memcmp (struct timeval*,struct timeval*,int) ;
 int msyslog (int ,char*,int ) ;
 int printf (char*,long,long) ;
 int progname ;
 struct timeval sub_tval (struct timeval,struct timeval) ;

int
gettimeofday_cached(
 struct event_base * b,
 struct timeval * caller_tv
 )
{
 return event_base_gettimeofday_cached(b, caller_tv);

}
