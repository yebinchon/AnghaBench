
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {int name; TYPE_2__* mac_regs_base; } ;
struct TYPE_3__ {int mdio_cfg_status; } ;
struct TYPE_4__ {TYPE_1__ mac_10g; } ;


 int AL_BIT (int ) ;
 int AL_ETH_MDIO_DELAY_COUNT ;
 int AL_ETH_MDIO_DELAY_PERIOD ;
 int ETIMEDOUT ;
 int al_dbg (char*,int ) ;
 int al_reg_read32 (int *) ;
 int al_udelay (int ) ;

__attribute__((used)) static int al_eth_mdio_10g_mac_wait_busy(struct al_hal_eth_adapter *adapter)
{
 int count = 0;
 uint32_t mdio_cfg_status;

 do {
  mdio_cfg_status = al_reg_read32(&adapter->mac_regs_base->mac_10g.mdio_cfg_status);






  if (mdio_cfg_status & AL_BIT(0)){
   if (count > 0)
    al_dbg("eth [%s] mdio: still busy!\n", adapter->name);
  }else{
   return 0;
  }
  al_udelay(AL_ETH_MDIO_DELAY_PERIOD);
 }while(count++ < AL_ETH_MDIO_DELAY_COUNT);

 return -ETIMEDOUT;
}
