
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;


 int MAX_SECONDS_IN_MSEC_LONG ;

long
evutil_tv_to_msec_(const struct timeval *tv)
{
 if (tv->tv_usec > 1000000 || tv->tv_sec > MAX_SECONDS_IN_MSEC_LONG)
  return -1;

 return (tv->tv_sec * 1000) + ((tv->tv_usec + 999) / 1000);
}
