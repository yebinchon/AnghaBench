
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct al_hal_eth_adapter {TYPE_3__* mac_regs_base; int mac_mode; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {int pcs_data; int pcs_addr; } ;
struct TYPE_6__ {TYPE_1__ mac_10g; TYPE_2__ kr; } ;


 scalar_t__ AL_ETH_IS_10G_MAC (int ) ;
 scalar_t__ AL_ETH_IS_25G_MAC (int ) ;
 int ETH_MAC_KR_PCS_BASE_R_STATUS2 ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_eth_link_status_clear(struct al_hal_eth_adapter *adapter)
{
 int status = 0;

 if (AL_ETH_IS_10G_MAC(adapter->mac_mode) || AL_ETH_IS_25G_MAC(adapter->mac_mode)) {
  al_reg_write32(&adapter->mac_regs_base->kr.pcs_addr, ETH_MAC_KR_PCS_BASE_R_STATUS2);
  al_reg_read32(&adapter->mac_regs_base->kr.pcs_data);

  al_reg_read32(&adapter->mac_regs_base->mac_10g.status);
 } else {
  status = -1;
 }

 return status;
}
