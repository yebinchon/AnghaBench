
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_regs {int dummy; } ;


 int DELAY (int) ;
 int FMAN_RTC_TMR_CTRL_TMSR ;
 int fman_rtc_set_timer_ctrl (struct rtc_regs*,int ) ;

void fman_rtc_timers_soft_reset(struct rtc_regs *regs)
{
 fman_rtc_set_timer_ctrl(regs, FMAN_RTC_TMR_CTRL_TMSR);
 DELAY(10);
 fman_rtc_set_timer_ctrl(regs, 0);
}
