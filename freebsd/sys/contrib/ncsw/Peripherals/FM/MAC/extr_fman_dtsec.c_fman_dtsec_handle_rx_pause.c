
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int maccfg1; } ;


 int MACCFG1_RX_FLOW ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_dtsec_handle_rx_pause(struct dtsec_regs *regs, bool en)
{
 uint32_t tmp;



 tmp = ioread32be(&regs->maccfg1);
 if (en)
  tmp |= MACCFG1_RX_FLOW;
 else
  tmp &= ~MACCFG1_RX_FLOW;
 iowrite32be(tmp, &regs->maccfg1);
}
