
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int tmr_ctrl; } ;


 int iowrite32be (int ,int *) ;

void fman_rtc_set_timer_ctrl(struct rtc_regs *regs, uint32_t val)
{
 iowrite32be(val, &regs->tmr_ctrl);
}
