
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_1__ it_value; } ;
struct timerfd {struct itimerspec tfd_time; } ;


 int linux_timerfd_clocktime (struct timerfd*,struct timespec*) ;
 int timespecsub (TYPE_1__*,struct timespec*,TYPE_1__*) ;

__attribute__((used)) static void
linux_timerfd_curval(struct timerfd *tfd, struct itimerspec *ots)
{
 struct timespec cts;

 linux_timerfd_clocktime(tfd, &cts);
 *ots = tfd->tfd_time;
 if (ots->it_value.tv_sec != 0 || ots->it_value.tv_nsec != 0) {
  timespecsub(&ots->it_value, &cts, &ots->it_value);
  if (ots->it_value.tv_sec < 0 ||
      (ots->it_value.tv_sec == 0 &&
       ots->it_value.tv_nsec == 0)) {
   ots->it_value.tv_sec = 0;
   ots->it_value.tv_nsec = 1;
  }
 }
}
