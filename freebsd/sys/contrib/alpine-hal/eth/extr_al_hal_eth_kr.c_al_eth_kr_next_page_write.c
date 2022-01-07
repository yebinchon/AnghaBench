
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_an_np {int unformatted_code_field2; int unformatted_code_field1; int next_page; int msg_page; int ack2; int toggle; int unformatted_code_field; } ;


 int AL_ETH_AN_REGS ;
 int AL_ETH_AN__LT_LANE_0 ;
 int AL_ETH_KR_AN_NP_ADV1_ACK2_MASK ;
 int AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT ;
 int AL_ETH_KR_AN_NP_ADV1_DATA1_MASK ;
 int AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT ;
 int AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK ;
 int AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT ;
 int AL_ETH_KR_AN_NP_ADV1_NP_MASK ;
 int AL_ETH_KR_AN_NP_ADV1_NP_SHIFT ;
 int AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK ;
 int AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT ;
 int AL_ETH_KR_AN_XNP_ADV0 ;
 int AL_ETH_KR_AN_XNP_ADV1 ;
 int AL_ETH_KR_AN_XNP_ADV2 ;
 int AL_REG_FIELD_SET (int ,int ,int ,int ) ;
 int al_eth_an_lt_reg_write (struct al_hal_eth_adapter*,int ,int ,int ,int ) ;

int al_eth_kr_next_page_write(struct al_hal_eth_adapter *adapter,
         struct al_eth_an_np *np)
{
 uint16_t reg = 0;

 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_NP_ADV1_DATA1_MASK,
    AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT,
    np->unformatted_code_field);
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK,
    AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT,
    np->toggle);
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_NP_ADV1_ACK2_MASK,
    AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT,
    np->ack2);
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK,
    AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT,
    np->msg_page);
 AL_REG_FIELD_SET(reg, AL_ETH_KR_AN_NP_ADV1_NP_MASK,
    AL_ETH_KR_AN_NP_ADV1_NP_SHIFT,
    np->next_page);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_XNP_ADV0, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, reg);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_XNP_ADV1, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, np->unformatted_code_field1);
 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_XNP_ADV2, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, np->unformatted_code_field2);

 return 0;
}
