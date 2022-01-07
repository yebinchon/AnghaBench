
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct memac_mii_access_mem_map {int mdio_data; int mdio_cfg; int mdio_ctrl; } ;


 int MDIO_CFG_BSY ;
 int MDIO_CFG_CLK_DIV_MASK ;
 int MDIO_CFG_HOLD_MASK ;
 int MDIO_CTL_PHY_ADDR_SHIFT ;
 int MDIO_DATA_BSY ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static void write_phy_reg_1g(struct memac_mii_access_mem_map *mii_regs,
 uint8_t phy_addr, uint8_t reg, uint16_t data)
{
 uint32_t tmp_reg;


 tmp_reg = ioread32be(&mii_regs->mdio_cfg);
 tmp_reg &= (MDIO_CFG_CLK_DIV_MASK | MDIO_CFG_HOLD_MASK);
 iowrite32be(tmp_reg, &mii_regs->mdio_cfg);


 while ((ioread32be(&mii_regs->mdio_cfg)) & MDIO_CFG_BSY)
  udelay(1);


 tmp_reg = (phy_addr << MDIO_CTL_PHY_ADDR_SHIFT);
 tmp_reg |= reg;
 iowrite32be(tmp_reg, &mii_regs->mdio_ctrl);

 while ((ioread32be(&mii_regs->mdio_cfg)) & MDIO_CFG_BSY)
  udelay(1);

 iowrite32be(data, &mii_regs->mdio_data);

 wmb();


 while ((ioread32be(&mii_regs->mdio_data)) & MDIO_DATA_BSY)
  udelay(1);
}
