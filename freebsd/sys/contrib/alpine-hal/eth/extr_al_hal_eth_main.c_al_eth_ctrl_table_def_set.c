
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_fwd_ctrl_table_entry {int dummy; } ;
typedef scalar_t__ al_bool ;
struct TYPE_3__ {int ctrl_table_def; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 int EC_RFW_CTRL_TABLE_DEF_SEL ;
 int al_eth_fwd_ctrl_entry_to_val (struct al_eth_fwd_ctrl_table_entry*) ;
 int al_reg_write32 (int *,int ) ;

int al_eth_ctrl_table_def_set(struct al_hal_eth_adapter *adapter,
         al_bool use_table,
         struct al_eth_fwd_ctrl_table_entry *entry)
{
 uint32_t val = al_eth_fwd_ctrl_entry_to_val(entry);

 if (use_table)
  val |= EC_RFW_CTRL_TABLE_DEF_SEL;

 al_reg_write32(&adapter->ec_regs_base->rfw.ctrl_table_def, val);

 return 0;
}
