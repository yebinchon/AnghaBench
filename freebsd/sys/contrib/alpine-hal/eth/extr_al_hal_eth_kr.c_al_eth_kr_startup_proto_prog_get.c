
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct al_hal_eth_adapter {int dummy; } ;
typedef enum al_eth_an_lt_lane { ____Placeholder_al_eth_an_lt_lane } al_eth_an_lt_lane ;
typedef int al_bool ;


 int AL_ETH_KR_PMD_STATUS ;
 int AL_ETH_KR_PMD_STATUS_RECEIVER_START_UP_PROTO_PROG_SHIFT ;
 int AL_ETH_LT_REGS ;
 scalar_t__ AL_REG_BIT_GET (int ,int ) ;
 int al_eth_an_lt_reg_read (struct al_hal_eth_adapter*,int ,int ,int) ;

al_bool al_eth_kr_startup_proto_prog_get(struct al_hal_eth_adapter *adapter,
      enum al_eth_an_lt_lane lane)
{
 uint16_t reg;

 reg = al_eth_an_lt_reg_read(adapter, AL_ETH_KR_PMD_STATUS, AL_ETH_LT_REGS, lane);

 return (AL_REG_BIT_GET(
  reg, AL_ETH_KR_PMD_STATUS_RECEIVER_START_UP_PROTO_PROG_SHIFT) != 0);
}
