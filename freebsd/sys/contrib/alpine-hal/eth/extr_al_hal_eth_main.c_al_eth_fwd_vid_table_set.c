
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_fwd_vid_table_entry {int dummy; } ;
struct TYPE_3__ {int vid_table_data; int vid_table_addr; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 scalar_t__ AL_ETH_FWD_VID_TABLE_NUM ;
 int al_assert (int) ;
 scalar_t__ al_eth_fwd_vid_entry_to_val (struct al_eth_fwd_vid_table_entry*) ;
 int al_reg_write32 (int *,scalar_t__) ;

int al_eth_fwd_vid_table_set(struct al_hal_eth_adapter *adapter, uint32_t idx,
        struct al_eth_fwd_vid_table_entry *entry)
{
 uint32_t val;
 al_assert(idx < AL_ETH_FWD_VID_TABLE_NUM);

 val = al_eth_fwd_vid_entry_to_val(entry);
 al_reg_write32(&adapter->ec_regs_base->rfw.vid_table_addr, idx);
 al_reg_write32(&adapter->ec_regs_base->rfw.vid_table_data, val);
 return 0;
}
