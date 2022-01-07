
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_usec; } ;


 int FINEUSEC ;
 int SHIFT_SCALE ;
 int tick ;
 scalar_t__ time_adj ;
 int time_phase ;
 TYPE_1__ timex ;

void
hardclock(void)
{
 int ltemp, time_update;

 time_update = tick;
 time_phase += time_adj;
 if (time_phase < -FINEUSEC) {
  ltemp = -time_phase >> SHIFT_SCALE;
  time_phase += ltemp << SHIFT_SCALE;
  time_update -= ltemp;
 }
 else if (time_phase > FINEUSEC) {
  ltemp = time_phase >> SHIFT_SCALE;
  time_phase -= ltemp << SHIFT_SCALE;
  time_update += ltemp;
 }
 timex.tv_usec += time_update;
}
