
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct dtsec_mii_reg {int miimind; int miimcon; int miimadd; int miimcom; int miimcfg; } ;


 int MIIMADD_PHY_ADDR_SHIFT ;
 int MIIMIND_BUSY ;
 scalar_t__ dtsec_mii_get_div (scalar_t__) ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;
 int wmb () ;

int fman_dtsec_mii_write_reg(struct dtsec_mii_reg *regs, uint8_t addr,
  uint8_t reg, uint16_t data, uint16_t dtsec_freq)
{
 uint32_t tmp;


 iowrite32be((uint32_t)dtsec_mii_get_div(dtsec_freq), &regs->miimcfg);
 wmb();


 iowrite32be(0, &regs->miimcom);

 tmp = ioread32be(&regs->miimcom);
 wmb();


 tmp = (uint32_t)((addr << MIIMADD_PHY_ADDR_SHIFT) | reg);
 iowrite32be(tmp, &regs->miimadd);
 wmb();


 iowrite32be((uint32_t)data, &regs->miimcon);

 tmp = ioread32be(&regs->miimcon);
 wmb();



 while ((ioread32be(&regs->miimind)) & MIIMIND_BUSY)
                 ;

 return 0;
}
