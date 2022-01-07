
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct dtsec_regs {int tbipa; } ;


 int EINVAL ;
 int iowrite32be (int,int *) ;

int fman_dtsec_set_tbi_phy_addr(struct dtsec_regs *regs,
  uint8_t addr)
{
 if (addr > 0 && addr < 32)
  iowrite32be(addr, &regs->tbipa);
 else
  return -EINVAL;

 return 0;
}
