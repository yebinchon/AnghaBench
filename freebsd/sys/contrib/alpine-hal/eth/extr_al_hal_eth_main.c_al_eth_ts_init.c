
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; int mac_mode; } ;
struct TYPE_3__ {int en_ext; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;


 scalar_t__ AL_ETH_IS_1G_MAC (int ) ;
 int EC_GEN_EN_EXT_PTH_1_10_SEL ;
 int EC_GEN_EN_EXT_PTH_COMPLETION_BYPASS ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_eth_ts_init(struct al_hal_eth_adapter *adapter)
{
 uint32_t reg;






 reg = al_reg_read32(&adapter->ec_regs_base->gen.en_ext);
 if (AL_ETH_IS_1G_MAC(adapter->mac_mode))
  reg &= ~EC_GEN_EN_EXT_PTH_1_10_SEL;
 else
  reg |= EC_GEN_EN_EXT_PTH_1_10_SEL;




 reg |= EC_GEN_EN_EXT_PTH_COMPLETION_BYPASS;
 al_reg_write32(&adapter->ec_regs_base->gen.en_ext, reg);






 return 0;
}
