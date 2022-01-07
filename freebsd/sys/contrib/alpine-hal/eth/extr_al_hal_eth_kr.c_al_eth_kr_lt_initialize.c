
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_hal_eth_adapter {int name; } ;
typedef enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;


 int AL_ETH_KR_PMD_LD_COEF_UP ;
 int AL_ETH_KR_PMD_LD_STATUS_REPORT ;
 int AL_ETH_KR_PMD_STATUS ;
 int AL_ETH_LT_REGS ;
 int al_dbg (char*,int ) ;
 int al_eth_an_lt_reg_write (struct al_hal_eth_adapter*,int ,int ,int,int ) ;
 int al_eth_kr_lt_restart (struct al_hal_eth_adapter*,int) ;
 int al_eth_kr_lt_stop (struct al_hal_eth_adapter*,int) ;

void al_eth_kr_lt_initialize(struct al_hal_eth_adapter *adapter,
        enum al_eth_an_lt_lane lane)
{
 al_dbg("[%s]: KR LT Initialize.\n", adapter->name);


 al_eth_kr_lt_stop(adapter, lane);


 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_PMD_STATUS, AL_ETH_LT_REGS, lane, 0);


 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_PMD_LD_COEF_UP, AL_ETH_LT_REGS, lane, 0);

 al_eth_an_lt_reg_write(adapter, AL_ETH_KR_PMD_LD_STATUS_REPORT, AL_ETH_LT_REGS, lane, 0);


 al_eth_kr_lt_restart(adapter, lane);
}
