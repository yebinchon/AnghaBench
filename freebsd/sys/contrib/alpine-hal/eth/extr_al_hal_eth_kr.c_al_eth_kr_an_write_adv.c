
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_an_adv {int selector_field; int echoed_nonce; int capability; int transmitted_nonce; int technology; int fec_capability; int next_page; int acknowledge; int remote_fault; } ;


 int AL_ETH_AN_REGS ;
 int AL_ETH_AN__LT_LANE_0 ;
 int AL_ETH_KR_AN_ADV0 ;
 int AL_ETH_KR_AN_ADV1 ;
 int AL_ETH_KR_AN_ADV1_ACK_SHIFT ;
 int AL_ETH_KR_AN_ADV1_CAPABILITY_MASK ;
 int AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT ;
 int AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK ;
 int AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT ;
 int AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT ;
 int AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT ;
 int AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK ;
 int AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT ;
 int AL_ETH_KR_AN_ADV2 ;
 int AL_ETH_KR_AN_ADV2_TECH_MASK ;
 int AL_ETH_KR_AN_ADV2_TECH_SHIFT ;
 int AL_ETH_KR_AN_ADV2_TX_NONCE_MASK ;
 int AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT ;
 int AL_ETH_KR_AN_ADV3_FEC_MASK ;
 int AL_ETH_KR_AN_ADV3_FEC_SHIFT ;
 int AL_ETH_KR_AN_ADV3_TECH_MASK ;
 int AL_ETH_KR_AN_ADV3_TECH_SHIFT ;
 int AL_REG_BIT_VAL_SET (scalar_t__,int ,int ) ;
 int AL_REG_FIELD_SET (scalar_t__,int ,int ,int) ;
 int al_eth_an_lt_reg_write (struct al_hal_eth_adapter*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int al_eth_kr_an_write_adv(struct al_hal_eth_adapter *adapter,
          struct al_eth_an_adv *an_adv)
{
 uint16_t reg;

 if(an_adv == ((void*)0))
  return 0;

 reg = 0;
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK,
    AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT,
    an_adv->selector_field);

 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK,
    AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT,
    an_adv->echoed_nonce);

 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV1_CAPABILITY_MASK,
    AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT,
    an_adv->capability);

 AL_REG_BIT_VAL_SET(reg, AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT,
      an_adv->remote_fault);

 AL_REG_BIT_VAL_SET(reg, AL_ETH_KR_AN_ADV1_ACK_SHIFT,
      an_adv->acknowledge);

 AL_REG_BIT_VAL_SET(reg, AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT,
      an_adv->next_page);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_ADV0, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, reg);

 reg = 0;
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV2_TX_NONCE_MASK,
    AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT,
    an_adv->transmitted_nonce);

 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV2_TECH_MASK,
    AL_ETH_KR_AN_ADV2_TECH_SHIFT,
    an_adv->technology);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_ADV1, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, reg);

 reg = 0;
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV3_TECH_MASK,
    AL_ETH_KR_AN_ADV3_TECH_SHIFT,
    an_adv->technology >> 11);

 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_ADV3_FEC_MASK,
    AL_ETH_KR_AN_ADV3_FEC_SHIFT,
    an_adv->fec_capability);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_ADV2, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, reg);

 return 0;
}
