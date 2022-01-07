
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; scalar_t__ tv_usec; } ;
struct itimerval {TYPE_1__ it_value; TYPE_1__ it_interval; } ;


 int ITIMER_REAL ;
 int setitimer (int ,struct itimerval*,int *) ;

void
alarmtimer(int wait)
{
 struct itimerval itv;

 itv.it_value.tv_sec = wait;
 itv.it_value.tv_usec = 0;
 itv.it_interval = itv.it_value;
 setitimer(ITIMER_REAL, &itv, ((void*)0));
}
