
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_hal_eth_adapter {int dummy; } ;
struct al_eth_epe_p_reg_entry {int dummy; } ;
struct al_eth_epe_control_entry {int dummy; } ;


 int al_eth_epe_entry_set (struct al_hal_eth_adapter*,int ,struct al_eth_epe_p_reg_entry*,struct al_eth_epe_control_entry*) ;

int al_eth_rx_parser_entry_update(struct al_hal_eth_adapter *adapter, uint32_t idx,
  struct al_eth_epe_p_reg_entry *reg_entry,
  struct al_eth_epe_control_entry *control_entry)
{
 al_eth_epe_entry_set(adapter, idx, reg_entry, control_entry);
 return 0;
}
