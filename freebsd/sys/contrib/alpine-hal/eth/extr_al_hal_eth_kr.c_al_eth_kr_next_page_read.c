
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_an_np {void* unformatted_code_field2; void* unformatted_code_field1; void* next_page; void* msg_page; void* ack2; void* toggle; void* unformatted_code_field; } ;


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
 int AL_ETH_KR_AN_REM_XNP_ADV0 ;
 int AL_ETH_KR_AN_REM_XNP_ADV1 ;
 int AL_ETH_KR_AN_REM_XNP_ADV2 ;
 void* AL_REG_FIELD_GET (void*,int ,int ) ;
 void* al_eth_an_lt_reg_read (struct al_hal_eth_adapter*,int ,int ,int ) ;

int al_eth_kr_next_page_read(struct al_hal_eth_adapter *adapter,
        struct al_eth_an_np *np)
{
 uint16_t reg;

 reg = al_eth_an_lt_reg_read(adapter,
        AL_ETH_KR_AN_REM_XNP_ADV0,
        AL_ETH_AN_REGS,
        AL_ETH_AN__LT_LANE_0);

 np->unformatted_code_field = AL_REG_FIELD_GET(reg, AL_ETH_KR_AN_NP_ADV1_DATA1_MASK,
      AL_ETH_KR_AN_NP_ADV1_DATA1_SHIFT);

 np->toggle = AL_REG_FIELD_GET(reg, AL_ETH_KR_AN_NP_ADV1_TOGGLE_MASK,
      AL_ETH_KR_AN_NP_ADV1_TOGGLE_SHIFT);

 np->ack2 = AL_REG_FIELD_GET(reg, AL_ETH_KR_AN_NP_ADV1_ACK2_MASK,
      AL_ETH_KR_AN_NP_ADV1_ACK2_SHIFT);

 np->msg_page = AL_REG_FIELD_GET(reg, AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_MASK,
      AL_ETH_KR_AN_NP_ADV1_MSG_PAGE_SHIFT);

 np->next_page = AL_REG_FIELD_GET(reg, AL_ETH_KR_AN_NP_ADV1_NP_MASK,
      AL_ETH_KR_AN_NP_ADV1_NP_SHIFT);

 np->unformatted_code_field1 = al_eth_an_lt_reg_read(adapter,
           AL_ETH_KR_AN_REM_XNP_ADV1,
           AL_ETH_AN_REGS,
           AL_ETH_AN__LT_LANE_0);
 np->unformatted_code_field2 = al_eth_an_lt_reg_read(adapter,
           AL_ETH_KR_AN_REM_XNP_ADV2,
           AL_ETH_AN_REGS,
           AL_ETH_AN__LT_LANE_0);

 return 0;
}
