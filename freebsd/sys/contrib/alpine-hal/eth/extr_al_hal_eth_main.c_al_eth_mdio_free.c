
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_hal_eth_adapter {scalar_t__ shared_mdio_if; TYPE_2__* mac_regs_base; } ;
struct TYPE_3__ {int mdio_ctrl_1; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;


 int AL_ETH_MDIO_DELAY_PERIOD ;
 scalar_t__ AL_FALSE ;
 int al_reg_write32 (int *,int ) ;
 int al_udelay (int) ;

__attribute__((used)) static int al_eth_mdio_free(struct al_hal_eth_adapter *adapter)
{
 if (adapter->shared_mdio_if == AL_FALSE)
  return 0;

 al_reg_write32(&adapter->mac_regs_base->gen.mdio_ctrl_1, 0);
 al_udelay(2 * AL_ETH_MDIO_DELAY_PERIOD);

 return 0;
}
