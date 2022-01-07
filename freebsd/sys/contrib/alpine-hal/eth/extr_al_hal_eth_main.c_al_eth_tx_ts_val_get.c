
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; int mac_mode; } ;
struct TYPE_4__ {TYPE_1__* pth_db; } ;
struct TYPE_3__ {int ts; } ;


 scalar_t__ AL_ETH_IS_1G_MAC (int ) ;
 int AL_ETH_PTH_TX_SAMPLES_NUM ;
 int al_assert (int) ;
 int al_reg_read32 (int *) ;

int al_eth_tx_ts_val_get(struct al_hal_eth_adapter *adapter, uint8_t ts_index,
    uint32_t *timestamp)
{
 al_assert(ts_index < AL_ETH_PTH_TX_SAMPLES_NUM);


 if (AL_ETH_IS_1G_MAC(adapter->mac_mode)) {
  al_assert(ts_index <= 7);
  al_assert(ts_index >= 1);
 }


 *timestamp = al_reg_read32(&adapter->ec_regs_base->pth_db[ts_index].ts);
 return 0;
}
