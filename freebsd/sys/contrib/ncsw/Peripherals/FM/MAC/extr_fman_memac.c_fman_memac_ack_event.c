
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memac_regs {int ievent; } ;


 int iowrite32be (int ,int *) ;

void fman_memac_ack_event(struct memac_regs *regs, uint32_t ev_mask)
{
    iowrite32be(ev_mask, &regs->ievent);
}
