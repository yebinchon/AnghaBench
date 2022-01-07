
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {scalar_t__ shared_mdio_if; TYPE_2__* mac_regs_base; int name; } ;
struct TYPE_3__ {int mdio_1; int mdio_ctrl_1; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;


 int AL_BIT (int ) ;
 int AL_ETH_MDIO_DELAY_COUNT ;
 int AL_ETH_MDIO_DELAY_PERIOD ;
 scalar_t__ AL_FALSE ;
 int ETIMEDOUT ;
 int al_dbg (char*,int ) ;
 int al_err (char*,int ,int) ;
 int al_reg_read32 (int *) ;
 int al_udelay (int ) ;

__attribute__((used)) static int al_eth_mdio_lock(struct al_hal_eth_adapter *adapter)
{
 int count = 0;
 uint32_t mdio_ctrl_1;

 if (adapter->shared_mdio_if == AL_FALSE)
  return 0;

 do {
  mdio_ctrl_1 = al_reg_read32(&adapter->mac_regs_base->gen.mdio_ctrl_1);






  if (mdio_ctrl_1 & AL_BIT(0)){
   if (count > 0)
    al_dbg("eth %s mdio interface still busy!\n", adapter->name);
  }else{
   return 0;
  }
  al_udelay(AL_ETH_MDIO_DELAY_PERIOD);
 }while(count++ < (AL_ETH_MDIO_DELAY_COUNT * 4));
 al_err(" %s mdio failed to take ownership. MDIO info reg: 0x%08x\n",
  adapter->name, al_reg_read32(&adapter->mac_regs_base->gen.mdio_1));

 return -ETIMEDOUT;
}
