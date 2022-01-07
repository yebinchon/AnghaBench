
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int maccfg1; } ;


 int MACCFG1_RX_EN ;
 int MACCFG1_TX_EN ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_dtsec_enable(struct dtsec_regs *regs, bool apply_rx, bool apply_tx)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->maccfg1);

 if (apply_rx)
  tmp |= MACCFG1_RX_EN ;

 if (apply_tx)
  tmp |= MACCFG1_TX_EN ;

 iowrite32be(tmp, &regs->maccfg1);
}
