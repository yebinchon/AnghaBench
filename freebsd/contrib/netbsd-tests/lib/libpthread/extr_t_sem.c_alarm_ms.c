
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct itimerval {TYPE_2__ it_value; TYPE_1__ it_interval; } ;


 int ATF_REQUIRE (int) ;
 int ITIMER_REAL ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;

__attribute__((used)) static void
alarm_ms(const int ms)
{
 struct itimerval timer;
 timer.it_interval.tv_sec = 0;
 timer.it_interval.tv_usec = 0;
 timer.it_value.tv_sec = 0;
 timer.it_value.tv_usec = ms * 1000;
 ATF_REQUIRE(setitimer(ITIMER_REAL, &timer, ((void*)0)) == 0);
}
