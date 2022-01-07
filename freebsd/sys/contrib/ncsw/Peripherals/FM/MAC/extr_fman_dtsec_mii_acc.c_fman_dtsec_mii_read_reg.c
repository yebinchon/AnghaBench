
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct dtsec_mii_reg {int miimcom; int miimstat; int miimind; int miimadd; int miimcfg; } ;


 int ENXIO ;
 int MIIMADD_PHY_ADDR_SHIFT ;
 int MIIMCOM_READ_CYCLE ;
 int MIIMIND_BUSY ;
 scalar_t__ dtsec_mii_get_div (int) ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;
 int wmb () ;

int fman_dtsec_mii_read_reg(struct dtsec_mii_reg *regs, uint8_t addr,
  uint8_t reg, uint16_t *data, uint16_t dtsec_freq)
{
 uint32_t tmp;


 iowrite32be((uint32_t)dtsec_mii_get_div(dtsec_freq), &regs->miimcfg);
 wmb();


 tmp = (uint32_t)((addr << MIIMADD_PHY_ADDR_SHIFT) | reg);
 iowrite32be(tmp, &regs->miimadd);
 wmb();


 iowrite32be(MIIMCOM_READ_CYCLE, &regs->miimcom);

 tmp = ioread32be(&regs->miimcom);
 wmb();



 while ((ioread32be(&regs->miimind)) & MIIMIND_BUSY)
                 ;


 *data = (uint16_t)ioread32be(&regs->miimstat);
 wmb();

 iowrite32be(0, &regs->miimcom);

 tmp = ioread32be(&regs->miimcom);

 if (*data == 0xffff)
  return -ENXIO;

 return 0;
}
