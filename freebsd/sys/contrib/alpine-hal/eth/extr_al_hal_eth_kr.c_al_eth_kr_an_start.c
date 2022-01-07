
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct al_hal_eth_adapter {int name; } ;
typedef enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;
typedef scalar_t__ al_bool ;


 int AL_BIT (int ) ;
 int AL_ETH_AN_REGS ;
 int AL_ETH_KR_AN_CONTROL ;
 int AL_ETH_KR_AN_CONTROL_ENABLE ;
 int AL_ETH_KR_AN_CONTROL_NP_ENABLE ;
 int AL_ETH_KR_AN_CONTROL_RESTART ;
 int AL_ETH_KR_PMD_CONTROL ;
 int AL_ETH_KR_PMD_CONTROL_RESTART ;
 int AL_ETH_LT_REGS ;
 scalar_t__ AL_TRUE ;
 int al_dbg (char*,int ,char*) ;
 int al_eth_an_lt_reg_write (struct al_hal_eth_adapter*,int ,int ,int,int) ;
 int al_eth_kr_lt_initialize (struct al_hal_eth_adapter*,int) ;

int al_eth_kr_an_start(struct al_hal_eth_adapter *adapter,
         enum al_eth_an_lt_lane lane,
         al_bool next_page_enable,
         al_bool lt_enable)
{
 uint16_t control = AL_ETH_KR_AN_CONTROL_ENABLE | AL_ETH_KR_AN_CONTROL_RESTART;

 al_dbg("Eth [%s]: enable autonegotiation. lt_en %s",
  adapter->name, (lt_enable == AL_TRUE) ? "yes" : "no");

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_PMD_CONTROL, AL_ETH_LT_REGS,
          lane, AL_BIT(AL_ETH_KR_PMD_CONTROL_RESTART));

 if (next_page_enable == AL_TRUE)
  control |= AL_ETH_KR_AN_CONTROL_NP_ENABLE;

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_CONTROL, AL_ETH_AN_REGS,
          lane, control);

 if (lt_enable == AL_TRUE) {
  al_eth_kr_lt_initialize(adapter, lane);
 }

 return 0;
}
