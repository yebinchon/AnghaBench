
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int CLOCK_REALTIME ;

 int clock_gettime (int ,struct timespec*) ;

int
timespec_get(struct timespec *ts, int base)
{

 switch (base) {
 case 128:
  if (clock_gettime(CLOCK_REALTIME, ts) == -1)
   return 0;
  break;
 default:
  return 0;
 }

 return base;
}
