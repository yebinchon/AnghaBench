
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int tmr_tevent; } ;


 int ioread32be (int *) ;

uint32_t fman_rtc_get_event(struct rtc_regs *regs, uint32_t ev_mask)
{
 return ioread32be(&regs->tmr_tevent) & ev_mask;
}
