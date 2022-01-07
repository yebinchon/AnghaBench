
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tv_sec; } ;


 long MAXSEC ;
 long SHIFT_KF ;
 long SHIFT_UPDATE ;
 scalar_t__ TIME_BAD ;
 scalar_t__ TIME_OK ;
 long time_constant ;
 long time_freq ;
 long time_offset ;
 long time_reftime ;
 scalar_t__ time_status ;
 long time_tolerance ;
 TYPE_1__ timex ;

void
hardupdate(
 long offset
 )
{
 long ltemp, mtemp;

 time_offset = offset << SHIFT_UPDATE;
 mtemp = timex.tv_sec - time_reftime;
 time_reftime = timex.tv_sec;
 if (mtemp > MAXSEC)
     mtemp = 0;


 if (offset < 0)
     time_freq -= (-offset * mtemp) >>
      (time_constant + time_constant);
 else
     time_freq += (offset * mtemp) >>
      (time_constant + time_constant);
 ltemp = time_tolerance << SHIFT_KF;
 if (time_freq > ltemp)
     time_freq = ltemp;
 else if (time_freq < -ltemp)
     time_freq = -ltemp;
 if (time_status == TIME_BAD)
     time_status = TIME_OK;
}
