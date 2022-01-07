
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_1__ it_interval; TYPE_2__ it_value; } ;


 int ITIMER_REAL ;
 int setitimer (int ,struct itimerval*,struct itimerval*) ;

__attribute__((used)) static int
hertz(void)
{
 struct itimerval tim;

 tim.it_interval.tv_sec = 0;
 tim.it_interval.tv_usec = 1;
 tim.it_value.tv_sec = 0;
 tim.it_value.tv_usec = 0;
 setitimer(ITIMER_REAL, &tim, 0);
 setitimer(ITIMER_REAL, 0, &tim);
 if (tim.it_interval.tv_usec < 2)
  return(0);
 return (1000000 / tim.it_interval.tv_usec);
}
