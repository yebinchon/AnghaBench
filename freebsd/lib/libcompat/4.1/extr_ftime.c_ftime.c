
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int tz_dsttime; int tz_minuteswest; } ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timeb {int millitm; int dstflag; int timezone; int time; } ;


 scalar_t__ gettimeofday (struct timeval*,struct timezone*) ;

int
ftime(struct timeb *tbp)
{
 struct timezone tz;
 struct timeval t;

 if (gettimeofday(&t, &tz) < 0)
  return (-1);
 tbp->millitm = t.tv_usec / 1000;
 tbp->time = t.tv_sec;
 tbp->timezone = tz.tz_minuteswest;
 tbp->dstflag = tz.tz_dsttime;

 return (0);
}
