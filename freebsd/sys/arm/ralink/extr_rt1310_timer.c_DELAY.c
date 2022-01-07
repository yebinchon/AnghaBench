
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int tc_frequency; } ;


 int TSENTER () ;
 int TSEXIT () ;
 scalar_t__ rt1310_get_timecount (TYPE_1__*) ;
 TYPE_1__ rt1310_timecounter ;
 int rt1310_timer_initialized ;

void
DELAY(int usec)
{
 uint32_t counter;
 uint32_t first, last;
 int val = (rt1310_timecounter.tc_frequency / 1000000 + 1) * usec;


 if (!rt1310_timer_initialized) {
  for (; usec > 0; usec--)
   for (counter = 100; counter > 0; counter--)
    ;
  return;
 }
 TSENTER();

 first = rt1310_get_timecount(&rt1310_timecounter);
 while (val > 0) {
  last = rt1310_get_timecount(&rt1310_timecounter);
  if (last < first) {

   last = first;
  }

  val -= (last - first);
  first = last;
 }
 TSEXIT();
}
