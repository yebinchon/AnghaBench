
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int dummy; } ;


 int fman_rtc_get_interrupt_mask (struct rtc_regs*) ;
 int fman_rtc_set_interrupt_mask (struct rtc_regs*,int) ;

void fman_rtc_disable_interupt(struct rtc_regs *regs, uint32_t events)
{
 fman_rtc_set_interrupt_mask(regs, fman_rtc_get_interrupt_mask(regs) & ~events);
}
