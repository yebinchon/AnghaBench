
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int maccfg2; } ;


 int MACCFG2_MAGIC_PACKET_EN ;
 int ioread32be (int *) ;
 int iowrite32be (int ,int *) ;

void fman_dtsec_set_wol(struct dtsec_regs *regs, bool en)
{
 uint32_t tmp;

 tmp = ioread32be(&regs->maccfg2);
 if (en)
  tmp |= MACCFG2_MAGIC_PACKET_EN;
 else
  tmp &= ~MACCFG2_MAGIC_PACKET_EN;
 iowrite32be(tmp, &regs->maccfg2);
}
