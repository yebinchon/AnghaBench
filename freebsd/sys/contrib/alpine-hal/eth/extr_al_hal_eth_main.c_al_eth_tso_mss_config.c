
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* tso_sel; } ;
struct TYPE_3__ {int mss; } ;


 scalar_t__ AL_ETH_TSO_MSS_MAX_VAL ;
 scalar_t__ AL_ETH_TSO_MSS_MIN_VAL ;
 int al_assert (int) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_tso_mss_config(struct al_hal_eth_adapter *adapter, uint8_t idx, uint32_t mss_val)
{

 al_assert(idx <= 8);
 al_assert(mss_val <= AL_ETH_TSO_MSS_MAX_VAL);
 al_assert(mss_val >= AL_ETH_TSO_MSS_MIN_VAL);

 al_reg_write32(&adapter->ec_regs_base->tso_sel[idx].mss, mss_val);
 return 0;
}
