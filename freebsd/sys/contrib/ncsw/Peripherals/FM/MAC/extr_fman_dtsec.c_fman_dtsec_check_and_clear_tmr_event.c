
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int tmr_pevent; int tmr_pemask; } ;


 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

uint32_t fman_dtsec_check_and_clear_tmr_event(struct dtsec_regs *regs)
{
 uint32_t event;

 event = ioread32be(&regs->tmr_pevent);
 event &= ioread32be(&regs->tmr_pemask);

 if (event)
  iowrite32be(event, &regs->tmr_pevent);
 return event;
}
