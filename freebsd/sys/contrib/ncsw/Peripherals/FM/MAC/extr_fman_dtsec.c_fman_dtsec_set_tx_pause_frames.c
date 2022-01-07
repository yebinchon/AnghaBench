
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct dtsec_regs {int maccfg1; int ptv; } ;


 int MACCFG1_TX_FLOW ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

void fman_dtsec_set_tx_pause_frames(struct dtsec_regs *regs, uint16_t time)
{
 uint32_t ptv = 0;



 if (time) {
  ptv = ioread32be(&regs->ptv);
  ptv &= 0xffff0000;
  ptv |= time & 0x0000ffff;
  iowrite32be(ptv, &regs->ptv);


  iowrite32be(ioread32be(&regs->maccfg1) | MACCFG1_TX_FLOW,
    &regs->maccfg1);
 } else
  iowrite32be(ioread32be(&regs->maccfg1) & ~MACCFG1_TX_FLOW,
    &regs->maccfg1);
}
