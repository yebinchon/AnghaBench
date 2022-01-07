
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; int rev_id; int name; } ;
struct al_eth_filter_override_params {int filters; int qid; int udma; } ;
struct TYPE_3__ {int default_or; int filter; } ;
struct TYPE_4__ {TYPE_1__ rfw; } ;


 int AL_ETH_RFW_FILTER_SUPPORTED (int ) ;
 int AL_REG_FIELD_SET (int ,int ,int ,int ) ;
 int EC_RFW_DEFAULT_OR_QUEUE_MASK ;
 int EC_RFW_DEFAULT_OR_QUEUE_SHIFT ;
 int EC_RFW_DEFAULT_OR_UDMA_MASK ;
 int EC_RFW_DEFAULT_OR_UDMA_SHIFT ;
 int EINVAL ;
 int al_assert (struct al_eth_filter_override_params*) ;
 int al_err (char*,int ,int) ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;
 int al_reg_write32_masked (int *,int,int) ;

int al_eth_filter_override_config(struct al_hal_eth_adapter *adapter,
      struct al_eth_filter_override_params *params)
{
 uint32_t reg;

 al_assert(params);

 if (params->filters & ~(AL_ETH_RFW_FILTER_SUPPORTED(adapter->rev_id))) {
  al_err("[%s]: unsupported override filter options (0x%08x)\n", adapter->name, params->filters);
  return -EINVAL;
 }

 al_reg_write32_masked(
  &adapter->ec_regs_base->rfw.filter,
  AL_ETH_RFW_FILTER_SUPPORTED(adapter->rev_id) << 16,
  params->filters << 16);

 reg = al_reg_read32(&adapter->ec_regs_base->rfw.default_or);
 AL_REG_FIELD_SET(reg, EC_RFW_DEFAULT_OR_UDMA_MASK, EC_RFW_DEFAULT_OR_UDMA_SHIFT, params->udma);
 AL_REG_FIELD_SET(reg, EC_RFW_DEFAULT_OR_QUEUE_MASK, EC_RFW_DEFAULT_OR_QUEUE_SHIFT, params->qid);
 al_reg_write32(&adapter->ec_regs_base->rfw.default_or, reg);
 return 0;
}
