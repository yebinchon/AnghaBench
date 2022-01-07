
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;


 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int sleep (int ) ;

int
do_sleep(struct timespec *delay, struct timespec *remain)
{
 struct timeval tv;

 TIMESPEC_TO_TIMEVAL(&tv, delay);
 remain->tv_sec = sleep(delay->tv_sec);
 remain->tv_nsec = 0;

 return 0;
}
