
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {long tv_sec; long tv_usec; } ;
typedef int ev_uint64_t ;
typedef int FILETIME ;


 int EPOCH_BIAS ;
 scalar_t__ EVUTIL_UNLIKELY (int) ;
 int GetSystemTimeAsFileTime (int *) ;
 int UNITS_PER_SEC ;
 int UNITS_PER_USEC ;
 int USEC_PER_SEC ;

int
evutil_gettimeofday(struct timeval *tv, struct timezone *tz)
{
 union {
  FILETIME ft_ft;
  ev_uint64_t ft_64;
 } ft;

 if (tv == ((void*)0))
  return -1;

 GetSystemTimeAsFileTime(&ft.ft_ft);

 if (EVUTIL_UNLIKELY(ft.ft_64 < 116444736000000000llu)) {

  return -1;
 }
 ft.ft_64 -= 116444736000000000llu;
 tv->tv_sec = (long) (ft.ft_64 / 10000000llu);
 tv->tv_usec = (long) ((ft.ft_64 / 10llu) % 1000000llu);
 return 0;
}
