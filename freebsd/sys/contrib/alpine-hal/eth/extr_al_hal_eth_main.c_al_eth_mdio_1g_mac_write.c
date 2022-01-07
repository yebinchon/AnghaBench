
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct al_hal_eth_adapter {TYPE_2__* mac_regs_base; } ;
struct TYPE_3__ {int phy_regs_base; } ;
struct TYPE_4__ {TYPE_1__ mac_1g; } ;


 int al_reg_write32 (int *,int ) ;

__attribute__((used)) static int al_eth_mdio_1g_mac_write(struct al_hal_eth_adapter *adapter,
        uint32_t phy_addr __attribute__((__unused__)),
        uint32_t reg, uint16_t val)
{
 al_reg_write32(
  &adapter->mac_regs_base->mac_1g.phy_regs_base + reg, val);
 return 0;
}
