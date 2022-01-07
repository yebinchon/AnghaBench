
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtc_regs {int tmr_tevent; int tmr_temask; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_rtc_check_and_clear_event(struct rtc_regs *regs)
{
 uint32_t event;

 event = ioread32be(&regs->tmr_tevent);
 event &= ioread32be(&regs->tmr_temask);

 if (event)
  iowrite32be(event, &regs->tmr_tevent);
 return event;
}
