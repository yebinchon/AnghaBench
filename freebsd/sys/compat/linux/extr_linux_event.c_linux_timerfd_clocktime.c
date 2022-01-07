
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct timerfd {scalar_t__ tfd_clockid; } ;


 scalar_t__ CLOCK_REALTIME ;
 int getnanotime (struct timespec*) ;
 int getnanouptime (struct timespec*) ;

__attribute__((used)) static void
linux_timerfd_clocktime(struct timerfd *tfd, struct timespec *ts)
{

 if (tfd->tfd_clockid == CLOCK_REALTIME)
  getnanotime(ts);
 else
  getnanouptime(ts);
}
