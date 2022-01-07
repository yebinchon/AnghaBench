
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_3__* ec_regs_base; int name; } ;
struct TYPE_4__ {int seconds; int femto; } ;
struct al_eth_pth_pulse_out_params {size_t index; scalar_t__ enable; scalar_t__ periodic; int pulse_width; TYPE_1__ start_time; int period_sec; int period_us; } ;
struct TYPE_6__ {TYPE_2__* pth_egress; } ;
struct TYPE_5__ {int pulse_width_subseconds_msb; int pulse_width_subseconds_lsb; int trigger_subseconds_msb; int trigger_subseconds_lsb; int trigger_seconds; int trigger_ctrl; } ;


 int AL_BIT_MASK (int) ;
 size_t AL_ETH_PTH_PULSE_OUT_NUM ;
 scalar_t__ AL_FALSE ;
 int AL_REG_FIELD_SET (int,int ,int ,int ) ;
 int EC_PTH_EGRESS_PULSE_WIDTH_SUBSECONDS_LSB_VAL_SHIFT ;
 int EC_PTH_EGRESS_TRIGGER_CTRL_EN ;
 int EC_PTH_EGRESS_TRIGGER_CTRL_PERIODIC ;
 int EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_MASK ;
 int EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_SHIFT ;
 int EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_MASK ;
 int EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_SHIFT ;
 int EC_PTH_EGRESS_TRIGGER_SUBSECONDS_LSB_VAL_SHIFT ;
 int EINVAL ;
 int al_err (char*,int ) ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int) ;

int al_eth_pth_pulse_out_config(struct al_hal_eth_adapter *adapter,
    struct al_eth_pth_pulse_out_params *params)
{
 uint32_t reg;

 if (params->index >= AL_ETH_PTH_PULSE_OUT_NUM) {
  al_err("eth [%s] PTH out pulse index out of range\n",
     adapter->name);
  return -EINVAL;
 }
 reg = al_reg_read32(&adapter->ec_regs_base->pth_egress[params->index].trigger_ctrl);
 if (params->enable == AL_FALSE) {
  reg &= ~EC_PTH_EGRESS_TRIGGER_CTRL_EN;
 } else {
  reg |= EC_PTH_EGRESS_TRIGGER_CTRL_EN;
  if (params->periodic == AL_FALSE)
   reg &= ~EC_PTH_EGRESS_TRIGGER_CTRL_PERIODIC;
  else
   reg |= EC_PTH_EGRESS_TRIGGER_CTRL_PERIODIC;

  AL_REG_FIELD_SET(reg, EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_MASK,
     EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SUBSEC_SHIFT,
     params->period_us);
  AL_REG_FIELD_SET(reg, EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_MASK,
     EC_PTH_EGRESS_TRIGGER_CTRL_PERIOD_SEC_SHIFT,
     params->period_sec);
 }
 al_reg_write32(&adapter->ec_regs_base->pth_egress[params->index].trigger_ctrl, reg);


 al_reg_write32(&adapter->ec_regs_base->pth_egress[params->index].trigger_seconds,
         params->start_time.seconds);
 reg = params->start_time.femto & AL_BIT_MASK(18);
 reg = reg << EC_PTH_EGRESS_TRIGGER_SUBSECONDS_LSB_VAL_SHIFT;
 al_reg_write32(&adapter->ec_regs_base->pth_egress[params->index].trigger_subseconds_lsb,
         reg);
 reg = params->start_time.femto >> 18;
 al_reg_write32(&adapter->ec_regs_base->pth_egress[params->index].trigger_subseconds_msb,
         reg);


 reg = params->pulse_width & AL_BIT_MASK(18);
 reg = reg << EC_PTH_EGRESS_PULSE_WIDTH_SUBSECONDS_LSB_VAL_SHIFT;
 al_reg_write32(&adapter->ec_regs_base->pth_egress[params->index].pulse_width_subseconds_lsb, reg);

 reg = params->pulse_width >> 18;
 al_reg_write32(&adapter->ec_regs_base->pth_egress[params->index].pulse_width_subseconds_msb, reg);

 return 0;
}
