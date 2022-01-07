
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_an_adv {int selector_field; int echoed_nonce; int capability; int transmitted_nonce; int technology; int fec_capability; void* next_page; void* acknowledge; void* remote_fault; } ;
typedef int int16_t ;


 int AL_ETH_AN_REGS ;
 int AL_ETH_AN__LT_LANE_0 ;
 int AL_ETH_KR_AN_ADV1_ACK_SHIFT ;
 int AL_ETH_KR_AN_ADV1_CAPABILITY_MASK ;
 int AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT ;
 int AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK ;
 int AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT ;
 int AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT ;
 int AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT ;
 int AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK ;
 int AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT ;
 int AL_ETH_KR_AN_ADV2_TECH_MASK ;
 int AL_ETH_KR_AN_ADV2_TECH_SHIFT ;
 int AL_ETH_KR_AN_ADV2_TX_NONCE_MASK ;
 int AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT ;
 int AL_ETH_KR_AN_ADV3_FEC_MASK ;
 int AL_ETH_KR_AN_ADV3_FEC_SHIFT ;
 int AL_ETH_KR_AN_ADV3_TECH_MASK ;
 int AL_ETH_KR_AN_ADV3_TECH_SHIFT ;
 int AL_ETH_KR_AN_REM_ADV0 ;
 int AL_ETH_KR_AN_REM_ADV1 ;
 int AL_ETH_KR_AN_REM_ADV2 ;
 void* AL_REG_BIT_GET (int ,int ) ;
 int AL_REG_FIELD_GET (int ,int ,int ) ;
 int al_assert (int ) ;
 int al_eth_an_lt_reg_read (struct al_hal_eth_adapter*,int ,int ,int ) ;

void al_eth_kr_an_read_adv(struct al_hal_eth_adapter *adapter,
      struct al_eth_an_adv *an_adv)
{
 int16_t reg;

 al_assert(an_adv != ((void*)0));


 reg = al_eth_an_lt_reg_read(adapter, AL_ETH_KR_AN_REM_ADV0,
        AL_ETH_AN_REGS, AL_ETH_AN__LT_LANE_0);

 an_adv->selector_field = AL_REG_FIELD_GET(reg,
     AL_ETH_KR_AN_ADV1_SEL_FIELD_MASK,
     AL_ETH_KR_AN_ADV1_SEL_FIELD_SHIFT);

 an_adv->echoed_nonce = AL_REG_FIELD_GET(reg,
     AL_ETH_KR_AN_ADV1_ECHOED_NONCE_MASK,
     AL_ETH_KR_AN_ADV1_ECHOED_NONCE_SHIFT);

 an_adv->capability = AL_REG_FIELD_GET(reg,
     AL_ETH_KR_AN_ADV1_CAPABILITY_MASK,
     AL_ETH_KR_AN_ADV1_CAPABILITY_SHIFT);

 an_adv->remote_fault = AL_REG_BIT_GET(reg,
     AL_ETH_KR_AN_ADV1_REM_FAULT_SHIFT);

 an_adv->acknowledge = AL_REG_BIT_GET(reg,
     AL_ETH_KR_AN_ADV1_ACK_SHIFT);

 an_adv->next_page = AL_REG_BIT_GET(reg,
     AL_ETH_KR_AN_ADV1_NEXT_PAGE_SHIFT);


 reg = al_eth_an_lt_reg_read(adapter, AL_ETH_KR_AN_REM_ADV1,
        AL_ETH_AN_REGS, AL_ETH_AN__LT_LANE_0);

 an_adv->transmitted_nonce = AL_REG_FIELD_GET(reg,
      AL_ETH_KR_AN_ADV2_TX_NONCE_MASK,
      AL_ETH_KR_AN_ADV2_TX_NONCE_SHIFT);

 an_adv->technology = AL_REG_FIELD_GET(reg,
      AL_ETH_KR_AN_ADV2_TECH_MASK,
      AL_ETH_KR_AN_ADV2_TECH_SHIFT);


 reg = al_eth_an_lt_reg_read(adapter, AL_ETH_KR_AN_REM_ADV2,
        AL_ETH_AN_REGS, AL_ETH_AN__LT_LANE_0);

 an_adv->technology |= (AL_REG_FIELD_GET(reg,
     AL_ETH_KR_AN_ADV3_TECH_MASK,
     AL_ETH_KR_AN_ADV3_TECH_SHIFT) << 11);

 an_adv->fec_capability = AL_REG_FIELD_GET(reg,
      AL_ETH_KR_AN_ADV3_FEC_MASK,
      AL_ETH_KR_AN_ADV3_FEC_SHIFT);
}
