
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ ARM_TMR_FREQUENCY_VARIES ;
 int * arm_tmr_et ;
 scalar_t__ arm_tmr_freq ;
 int arm_tmr_freq_varies ;
 int et_change_frequency (int *,scalar_t__) ;

void
arm_tmr_change_frequency(uint64_t newfreq)
{

 if (newfreq == ARM_TMR_FREQUENCY_VARIES) {
  arm_tmr_freq_varies = 1;
  return;
 }

 arm_tmr_freq = newfreq;
 if (arm_tmr_et != ((void*)0))
  et_change_frequency(arm_tmr_et, newfreq);
}
