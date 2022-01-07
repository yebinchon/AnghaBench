
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int dummy; } ;


 int FMAN_RTC_TMR_CTRL_FS ;
 int FMAN_RTC_TMR_TEVENT_PP1 ;
 int FMAN_RTC_TMR_TEVENT_PP2 ;
 int fman_rtc_disable_interupt (struct rtc_regs*,int) ;
 int fman_rtc_get_timer_ctrl (struct rtc_regs*) ;
 int fman_rtc_set_timer_ctrl (struct rtc_regs*,int) ;
 int fman_rtc_set_timer_fiper (struct rtc_regs*,int,int) ;

void fman_rtc_clear_periodic_pulse(struct rtc_regs *regs, int id)
{
 uint32_t tmp_reg;
 if (id == 0)
  tmp_reg = FMAN_RTC_TMR_TEVENT_PP1;
 else
  tmp_reg = FMAN_RTC_TMR_TEVENT_PP2;
 fman_rtc_disable_interupt(regs, tmp_reg);

 tmp_reg = fman_rtc_get_timer_ctrl(regs);
 if (tmp_reg & FMAN_RTC_TMR_CTRL_FS)
  fman_rtc_set_timer_ctrl(regs, tmp_reg & ~FMAN_RTC_TMR_CTRL_FS);

 fman_rtc_set_timer_fiper(regs, id, 0xFFFFFFFF);
}
