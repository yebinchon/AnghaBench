
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;


 int CLOCK_REALTIME ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 struct timespec evConsTime (int ,int ) ;
 struct timespec evTimeSpec (struct timeval) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;

struct timespec
evUTCTime(void) {
 struct timeval now;





 if (gettimeofday(&now, ((void*)0)) < 0)
  return (evConsTime(0, 0));
 return (evTimeSpec(now));
}
