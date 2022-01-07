
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int useconds_t ;
struct TYPE_4__ {int tv_usec; int tv_sec; } ;
struct TYPE_3__ {int tv_usec; int tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int ITIMER_REAL ;
 int USPS ;
 scalar_t__ setitimer (int ,struct itimerval*,struct itimerval*) ;

useconds_t
ualarm(useconds_t usecs, useconds_t reload)
{
 struct itimerval new, old;

 new.it_interval.tv_usec = reload % USPS;
 new.it_interval.tv_sec = reload / USPS;

 new.it_value.tv_usec = usecs % USPS;
 new.it_value.tv_sec = usecs / USPS;

 if (setitimer(ITIMER_REAL, &new, &old) == 0)
  return (old.it_value.tv_sec * USPS + old.it_value.tv_usec);

  return (-1);
}
