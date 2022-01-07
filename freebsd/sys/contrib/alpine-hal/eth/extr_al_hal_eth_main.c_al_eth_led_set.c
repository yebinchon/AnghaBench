
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* mac_regs_base; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int led_cfg; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;


 int AL_REG_FIELD_SET (int ,int ,int ,int ) ;
 int ETH_MAC_GEN_LED_CFG_ACT_TIMER_MASK ;
 int ETH_MAC_GEN_LED_CFG_ACT_TIMER_SHIFT ;
 int ETH_MAC_GEN_LED_CFG_ACT_TIMER_VAL ;
 int ETH_MAC_GEN_LED_CFG_BLINK_TIMER_MASK ;
 int ETH_MAC_GEN_LED_CFG_BLINK_TIMER_SHIFT ;
 int ETH_MAC_GEN_LED_CFG_BLINK_TIMER_VAL ;
 int ETH_MAC_GEN_LED_CFG_SEL_DEFAULT_REG ;
 int ETH_MAC_GEN_LED_CFG_SEL_LINK_ACTIVITY ;
 int ETH_MAC_GEN_LED_CFG_SEL_MASK ;
 int ETH_MAC_GEN_LED_CFG_SEL_SHIFT ;
 int al_reg_write32 (int *,int ) ;

int al_eth_led_set(struct al_hal_eth_adapter *adapter, al_bool link_is_up)
{
 uint32_t reg = 0;
 uint32_t mode = ETH_MAC_GEN_LED_CFG_SEL_DEFAULT_REG;

 if (link_is_up)
  mode = ETH_MAC_GEN_LED_CFG_SEL_LINK_ACTIVITY;

 AL_REG_FIELD_SET(reg, ETH_MAC_GEN_LED_CFG_SEL_MASK,
    ETH_MAC_GEN_LED_CFG_SEL_SHIFT, mode);

 AL_REG_FIELD_SET(reg, ETH_MAC_GEN_LED_CFG_BLINK_TIMER_MASK,
    ETH_MAC_GEN_LED_CFG_BLINK_TIMER_SHIFT,
    ETH_MAC_GEN_LED_CFG_BLINK_TIMER_VAL);

 AL_REG_FIELD_SET(reg, ETH_MAC_GEN_LED_CFG_ACT_TIMER_MASK,
    ETH_MAC_GEN_LED_CFG_ACT_TIMER_SHIFT,
    ETH_MAC_GEN_LED_CFG_ACT_TIMER_VAL);

 al_reg_write32(&adapter->mac_regs_base->gen.led_cfg, reg);

 return 0;
}
