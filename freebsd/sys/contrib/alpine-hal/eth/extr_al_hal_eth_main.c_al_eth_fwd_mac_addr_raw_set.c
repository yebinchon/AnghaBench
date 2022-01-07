
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* fwd_mac; } ;
struct TYPE_3__ {int mask_h; int mask_l; int data_h; int data_l; } ;


 size_t AL_ETH_FWD_MAC_NUM ;
 int al_assert (int) ;
 int al_reg_write32 (int *,size_t) ;

int al_eth_fwd_mac_addr_raw_set(struct al_hal_eth_adapter *adapter, uint32_t idx, uint32_t addr_lo, uint32_t addr_hi, uint32_t mask_lo, uint32_t mask_hi)
{
 al_assert(idx < AL_ETH_FWD_MAC_NUM);

 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].data_l, addr_lo);
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].data_h, addr_hi);
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].mask_l, mask_lo);
 al_reg_write32(&adapter->ec_regs_base->fwd_mac[idx].mask_h, mask_hi);

 return 0;
}
