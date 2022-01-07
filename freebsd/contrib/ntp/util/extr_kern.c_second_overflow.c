
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_sec; } ;


 int SHIFT_HZ ;
 int SHIFT_KF ;
 int SHIFT_KG ;
 int SHIFT_SCALE ;
 int SHIFT_UPDATE ;


 int TIME_OK ;

 int fixtick ;
 int time_adj ;
 int time_constant ;
 int time_freq ;
 int time_maxerror ;
 int time_offset ;
 int time_status ;
 scalar_t__ time_tolerance ;
 TYPE_1__ timex ;

void
second_overflow(void)
{
 int ltemp;

 time_maxerror += time_tolerance;
 if (time_offset < 0) {
  ltemp = -time_offset >>
   (SHIFT_KG + time_constant);
  time_offset += ltemp;
  time_adj = -(ltemp <<
        (SHIFT_SCALE - SHIFT_HZ - SHIFT_UPDATE));
 } else {
  ltemp = time_offset >>
   (SHIFT_KG + time_constant);
  time_offset -= ltemp;
  time_adj = ltemp <<
   (SHIFT_SCALE - SHIFT_HZ - SHIFT_UPDATE);
 }
 if (time_freq < 0)
     time_adj -= -time_freq >> (SHIFT_KF + SHIFT_HZ - SHIFT_SCALE);
 else
     time_adj += time_freq >> (SHIFT_KF + SHIFT_HZ - SHIFT_SCALE);
 time_adj += fixtick << (SHIFT_SCALE - SHIFT_HZ);


 if (timex.tv_sec % 86400 == 0) {
  switch (time_status) {

      case 129:
   timex.tv_sec--;
   time_status = 128;
   break;

      case 130:
   timex.tv_sec++;
   time_status = TIME_OK;
   break;

      case 128:
   time_status = TIME_OK;
   break;
  }
 }
}
