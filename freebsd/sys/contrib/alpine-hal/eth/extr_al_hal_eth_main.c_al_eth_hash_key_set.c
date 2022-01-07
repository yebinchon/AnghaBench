
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* rfw_hash; } ;
struct TYPE_3__ {int key; } ;


 size_t AL_ETH_RX_HASH_KEY_NUM ;
 int al_assert (int) ;
 int al_reg_write32 (int *,size_t) ;

int al_eth_hash_key_set(struct al_hal_eth_adapter *adapter, uint32_t idx, uint32_t val)
{

 al_assert(idx < AL_ETH_RX_HASH_KEY_NUM);

 al_reg_write32(&adapter->ec_regs_base->rfw_hash[idx].key, val);

 return 0;
}
