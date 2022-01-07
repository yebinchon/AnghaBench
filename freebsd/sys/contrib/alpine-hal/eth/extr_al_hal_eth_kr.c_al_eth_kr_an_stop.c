
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {int dummy; } ;


 int AL_ETH_AN_REGS ;
 int AL_ETH_AN__LT_LANE_0 ;
 int AL_ETH_KR_AN_CONTROL ;
 int al_eth_an_lt_reg_write (struct al_hal_eth_adapter*,int ,int ,int ,int ) ;

void al_eth_kr_an_stop(struct al_hal_eth_adapter *adapter)
{
 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_AN_CONTROL, AL_ETH_AN_REGS,
          AL_ETH_AN__LT_LANE_0, 0);
}
