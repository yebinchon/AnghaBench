
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct TYPE_4__ {TYPE_1__* rfw_default; } ;
struct TYPE_3__ {int opt_1; } ;


 int EC_RFW_DEFAULT_OPT_1_PRIORITY_MASK ;
 int EC_RFW_DEFAULT_OPT_1_PRIORITY_SHIFT ;
 int al_reg_write32_masked (int *,int ,int) ;

int al_eth_fwd_default_priority_config(struct al_hal_eth_adapter *adapter, uint32_t idx,
       uint8_t prio)
{
 al_reg_write32_masked(&adapter->ec_regs_base->rfw_default[idx].opt_1,
          EC_RFW_DEFAULT_OPT_1_PRIORITY_MASK,
          prio << EC_RFW_DEFAULT_OPT_1_PRIORITY_SHIFT);
 return 0;
}
