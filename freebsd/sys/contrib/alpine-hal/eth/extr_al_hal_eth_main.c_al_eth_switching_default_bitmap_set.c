
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct al_hal_eth_adapter {TYPE_1__* ec_regs_base; } ;
struct TYPE_4__ {int bc_udma; int mc_udma; int uc_udma; } ;
struct TYPE_3__ {TYPE_2__* tfw_udma; } ;


 int al_reg_write32 (int *,size_t) ;

int al_eth_switching_default_bitmap_set(struct al_hal_eth_adapter *adapter, uint8_t udma_id, uint8_t udma_uc_bitmask,
      uint8_t udma_mc_bitmask,uint8_t udma_bc_bitmask)
{
 al_reg_write32(&adapter->ec_regs_base->tfw_udma[udma_id].uc_udma, udma_uc_bitmask);
 al_reg_write32(&adapter->ec_regs_base->tfw_udma[udma_id].mc_udma, udma_mc_bitmask);
 al_reg_write32(&adapter->ec_regs_base->tfw_udma[udma_id].bc_udma, udma_bc_bitmask);

 return 0;
}
