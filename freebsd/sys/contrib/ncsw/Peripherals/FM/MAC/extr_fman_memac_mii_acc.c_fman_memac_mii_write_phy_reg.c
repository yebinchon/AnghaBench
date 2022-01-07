
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct memac_mii_access_mem_map {int dummy; } ;
typedef enum enet_speed { ____Placeholder_enet_speed } enet_speed ;


 int E_ENET_SPEED_10000 ;
 int write_phy_reg_10g (struct memac_mii_access_mem_map*,int ,int ,int ) ;
 int write_phy_reg_1g (struct memac_mii_access_mem_map*,int ,int ,int ) ;

int fman_memac_mii_write_phy_reg(struct memac_mii_access_mem_map *mii_regs,
 uint8_t phy_addr, uint8_t reg, uint16_t data,
 enum enet_speed enet_speed)
{


 if (enet_speed == E_ENET_SPEED_10000)
  write_phy_reg_10g(mii_regs, phy_addr, reg, data);
 else
  write_phy_reg_1g(mii_regs, phy_addr, reg, data);

 return 0;
}
