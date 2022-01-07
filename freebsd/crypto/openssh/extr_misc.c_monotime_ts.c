
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct timespec {long tv_nsec; int tv_sec; } ;


 int CLOCK_BOOTTIME ;
 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int debug3 (char*,int ) ;
 int errno ;
 int gettimeofday (struct timeval*,int *) ;
 int strerror (int ) ;

void
monotime_ts(struct timespec *ts)
{
 struct timeval tv;
 gettimeofday(&tv, ((void*)0));
 ts->tv_sec = tv.tv_sec;
 ts->tv_nsec = (long)tv.tv_usec * 1000;
}
