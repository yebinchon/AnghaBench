
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dtsec_regs {int* gaddr; int* igaddr; } ;


 int ioread32be (int*) ;
 int iowrite32be (int,int*) ;

void fman_dtsec_set_bucket(struct dtsec_regs *regs, int bucket, bool enable)
{
 int reg_idx = (bucket >> 5) & 0xf;
 int bit_idx = bucket & 0x1f;
 uint32_t bit_mask = 0x80000000 >> bit_idx;
 uint32_t *reg;

 if (reg_idx > 7)
  reg = &regs->gaddr[reg_idx-8];
 else
  reg = &regs->igaddr[reg_idx];

 if (enable)
  iowrite32be(ioread32be(reg) | bit_mask, reg);
 else
  iowrite32be(ioread32be(reg) & (~bit_mask), reg);
}
