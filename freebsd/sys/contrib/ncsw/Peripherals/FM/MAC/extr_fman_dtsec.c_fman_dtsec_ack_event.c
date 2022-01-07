
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int ievent; } ;


 int iowrite32be (int ,int *) ;

void fman_dtsec_ack_event(struct dtsec_regs *regs, uint32_t ev_mask)
{
 iowrite32be(ev_mask, &regs->ievent);
}
