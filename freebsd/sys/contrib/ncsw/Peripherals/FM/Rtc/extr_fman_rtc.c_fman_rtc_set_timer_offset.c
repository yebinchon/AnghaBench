
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int tmr_off_h; int tmr_off_l; } ;
typedef int int64_t ;


 int iowrite32be (int ,int *) ;

void fman_rtc_set_timer_offset(struct rtc_regs *regs, int64_t val)
{
 iowrite32be((uint32_t)val, &regs->tmr_off_l);
 iowrite32be((uint32_t)(val >> 32), &regs->tmr_off_h);
}
