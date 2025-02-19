
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int dummy; } ;


 int FMAN_RTC_TMR_TEVENT_PP1 ;
 int FMAN_RTC_TMR_TEVENT_PP2 ;
 int fman_rtc_enable_interupt (struct rtc_regs*,int ) ;
 int fman_rtc_set_timer_fiper (struct rtc_regs*,int,int ) ;

void fman_rtc_set_periodic_pulse(struct rtc_regs *regs, int id, uint32_t val,
      bool enable)
{
 uint32_t tmpReg;
 fman_rtc_set_timer_fiper(regs, id, val);
 if (enable) {
  if (id == 0)
   tmpReg = FMAN_RTC_TMR_TEVENT_PP1;
  else
   tmpReg = FMAN_RTC_TMR_TEVENT_PP2;
  fman_rtc_enable_interupt(regs, tmpReg);
 }
}
