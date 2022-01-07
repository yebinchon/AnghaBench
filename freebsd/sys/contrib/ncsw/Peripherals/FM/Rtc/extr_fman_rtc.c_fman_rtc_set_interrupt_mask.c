
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int tmr_temask; } ;


 int iowrite32be (int ,int *) ;

void fman_rtc_set_interrupt_mask(struct rtc_regs *regs, uint32_t mask)
{
 iowrite32be(mask, &regs->tmr_temask);
}
