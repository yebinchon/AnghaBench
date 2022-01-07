
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_regs {int dummy; } ;


 int FMAN_RTC_TMR_CTRL_TE ;
 int fman_rtc_get_timer_ctrl (struct rtc_regs*) ;
 int fman_rtc_set_timer_ctrl (struct rtc_regs*,int) ;

void fman_rtc_disable(struct rtc_regs *regs)
{
 fman_rtc_set_timer_ctrl(regs, (fman_rtc_get_timer_ctrl(regs)
     & ~(FMAN_RTC_TMR_CTRL_TE)));
}
