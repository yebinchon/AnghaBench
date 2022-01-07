
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_3__* ec_regs_base; int rev_id; int name; } ;
struct al_eth_filter_params {int filters; scalar_t__ enable; scalar_t__* filter_proto; } ;
struct TYPE_4__ {int filter; int out_cfg; } ;
struct TYPE_6__ {TYPE_2__* epe_a; TYPE_1__ rfw; } ;
struct TYPE_5__ {int prot_act; } ;


 int AL_ETH_PROTOCOLS_NUM ;
 int AL_ETH_RFW_FILTER_PROT_INDEX ;
 int AL_ETH_RFW_FILTER_SUPPORTED (int ) ;
 int AL_REG_MASK_CLEAR (int ,int ) ;
 int AL_REG_MASK_SET (int ,int ) ;
 scalar_t__ AL_TRUE ;
 int EC_EPE_A_PROT_ACT_DROP ;
 int EC_RFW_OUT_CFG_DROP_EN ;
 int EINVAL ;
 int al_assert (struct al_eth_filter_params*) ;
 int al_err (char*,int ,int) ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;
 int al_reg_write32_masked (int *,int,int) ;

int al_eth_filter_config(struct al_hal_eth_adapter *adapter, struct al_eth_filter_params *params)
{
 uint32_t reg;

 al_assert(params);

 if (params->filters & ~(AL_ETH_RFW_FILTER_SUPPORTED(adapter->rev_id))) {
  al_err("[%s]: unsupported filter options (0x%08x)\n", adapter->name, params->filters);
  return -EINVAL;
 }

 reg = al_reg_read32(&adapter->ec_regs_base->rfw.out_cfg);
 if (params->enable == AL_TRUE)
  AL_REG_MASK_SET(reg, EC_RFW_OUT_CFG_DROP_EN);
 else
  AL_REG_MASK_CLEAR(reg, EC_RFW_OUT_CFG_DROP_EN);
 al_reg_write32(&adapter->ec_regs_base->rfw.out_cfg, reg);

 al_reg_write32_masked(
  &adapter->ec_regs_base->rfw.filter,
  AL_ETH_RFW_FILTER_SUPPORTED(adapter->rev_id),
  params->filters);
 if (params->filters & AL_ETH_RFW_FILTER_PROT_INDEX) {
  int i;
  for (i = 0; i < AL_ETH_PROTOCOLS_NUM; i++) {
   reg = al_reg_read32(&adapter->ec_regs_base->epe_a[i].prot_act);
   if (params->filter_proto[i] == AL_TRUE)
    AL_REG_MASK_SET(reg, EC_EPE_A_PROT_ACT_DROP);
   else
    AL_REG_MASK_CLEAR(reg, EC_EPE_A_PROT_ACT_DROP);
   al_reg_write32(&adapter->ec_regs_base->epe_a[i].prot_act, reg);
  }
 }
 return 0;
}
