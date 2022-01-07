
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;


 int gettimeofday (struct timeval*,int *) ;
 int slowio_delay_usec ;
 scalar_t__ slowio_pollcnt ;
 TYPE_1__ slowio_starttime ;
 int usleep (int) ;

void
slowio_end()
{
 struct timeval tv;
 int delay_usec;

 if (slowio_pollcnt != 0)
  return;


 gettimeofday(&tv, ((void*)0));
 delay_usec = (tv.tv_sec - slowio_starttime.tv_sec) * 1000000 +
     (tv.tv_usec - slowio_starttime.tv_usec);
 if (delay_usec < 64)
  delay_usec = 64;
 if (delay_usec > 2500000)
  delay_usec = 2500000;
 slowio_delay_usec = (slowio_delay_usec * 63 + delay_usec) >> 6;

 if (slowio_delay_usec > 64)
  usleep(slowio_delay_usec * 8);
}
