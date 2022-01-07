
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int dummy; } ;


 int DELAY (int) ;
 int FMAN_RTC_TMR_CTRL_TE ;
 int FMAN_RTC_TMR_CTRL_TMSR ;
 int fman_rtc_get_timer_ctrl (struct rtc_regs*) ;
 int fman_rtc_set_timer_ctrl (struct rtc_regs*,int) ;
 int fman_rtc_set_timer_offset (struct rtc_regs*,int ) ;

void fman_rtc_enable(struct rtc_regs *regs, bool reset_clock)
{
 uint32_t tmr_ctrl = fman_rtc_get_timer_ctrl(regs);


 if (reset_clock) {
  fman_rtc_set_timer_ctrl(regs, (tmr_ctrl | FMAN_RTC_TMR_CTRL_TMSR));

  DELAY(10);

  fman_rtc_set_timer_offset(regs, 0);
 }

 fman_rtc_set_timer_ctrl(regs, (tmr_ctrl | FMAN_RTC_TMR_CTRL_TE));
}
