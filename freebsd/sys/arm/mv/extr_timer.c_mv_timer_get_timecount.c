
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {int dummy; } ;


 int INITIAL_TIMECOUNTER ;
 int mv_get_timer (int) ;

__attribute__((used)) static unsigned
mv_timer_get_timecount(struct timecounter *tc)
{

 return (INITIAL_TIMECOUNTER - mv_get_timer(1));
}
