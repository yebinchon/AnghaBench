
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint16_t ;
struct al_hal_eth_adapter {TYPE_3__* ec_regs_base; int name; } ;
struct TYPE_6__ {TYPE_2__* tpm_udma; TYPE_1__* tpm_sel; } ;
struct TYPE_5__ {int vlan_data; } ;
struct TYPE_4__ {int etype; } ;


 int al_dbg (char*,int ,size_t) ;
 int al_reg_write32 (int *,int) ;

int al_eth_vlan_mod_config(struct al_hal_eth_adapter *adapter, uint8_t udma_id, uint16_t udma_etype, uint16_t vlan1_data, uint16_t vlan2_data)
{
 al_dbg("[%s]: config vlan modification registers. udma id %d.\n", adapter->name, udma_id);

 al_reg_write32(&adapter->ec_regs_base->tpm_sel[udma_id].etype, udma_etype);
 al_reg_write32(&adapter->ec_regs_base->tpm_udma[udma_id].vlan_data, vlan1_data | (vlan2_data << 16));

 return 0;
}
