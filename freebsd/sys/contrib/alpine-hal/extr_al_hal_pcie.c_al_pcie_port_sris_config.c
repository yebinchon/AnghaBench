
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct al_pcie_sris_params {int kp_counter_gen3; int kp_counter_gen21; scalar_t__ use_defaults; } ;
struct TYPE_6__ {int * sris_kp_counter; } ;
struct TYPE_7__ {TYPE_2__ global_ctrl; TYPE_1__* cfg_func_ext; } ;
struct al_pcie_regs {TYPE_4__* port_regs; TYPE_3__ app; } ;
struct al_pcie_port {int rev_id; int port_id; struct al_pcie_regs* regs; } ;
typedef enum al_pcie_link_speed { ____Placeholder_al_pcie_link_speed } al_pcie_link_speed ;
struct TYPE_8__ {int filter_mask_reg_1; } ;
struct TYPE_5__ {int cfg; } ;


 int AL_PCIE_LINK_SPEED_GEN3 ;



 int EINVAL ;
 int PCIE_FLT_MASK_SKP_INT_VAL_MASK ;
 int PCIE_SRIS_KP_COUNTER_GEN21_DEFAULT_VAL ;
 int PCIE_SRIS_KP_COUNTER_GEN3_DEFAULT_VAL ;
 int PCIE_W_CFG_FUNC_EXT_CFG_APP_SRIS_MODE ;
 int PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_MASK ;
 int PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_SHIFT ;
 int PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_MASK ;
 int PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_SHIFT ;
 int PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_PCIE_X4_SRIS_EN ;
 int al_assert (int ) ;
 int al_dbg (char*,int ,int,int) ;
 int al_err (char*,int ,int,...) ;
 int al_pcie_speed_gen_code (int) ;
 int al_reg_write32_masked (int *,int,int) ;

__attribute__((used)) static int
al_pcie_port_sris_config(
 struct al_pcie_port *pcie_port,
 struct al_pcie_sris_params *sris_params,
 enum al_pcie_link_speed link_speed)
{
 int rc = 0;
 struct al_pcie_regs *regs = pcie_port->regs;

 if (sris_params->use_defaults) {
  sris_params->kp_counter_gen3 = (pcie_port->rev_id > 130) ?
      PCIE_SRIS_KP_COUNTER_GEN3_DEFAULT_VAL : 0;
  sris_params->kp_counter_gen21 = PCIE_SRIS_KP_COUNTER_GEN21_DEFAULT_VAL;

  al_dbg("PCIe %d: configuring SRIS with default values kp_gen3[%d] kp_gen21[%d]\n",
   pcie_port->port_id,
   sris_params->kp_counter_gen3,
   sris_params->kp_counter_gen21);
 }

 switch (pcie_port->rev_id) {
 case 128:
  al_reg_write32_masked(&regs->app.cfg_func_ext->cfg,
    PCIE_W_CFG_FUNC_EXT_CFG_APP_SRIS_MODE,
    PCIE_W_CFG_FUNC_EXT_CFG_APP_SRIS_MODE);
 case 129:
  al_reg_write32_masked(regs->app.global_ctrl.sris_kp_counter,
   PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_MASK |
   PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_MASK |
   PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_PCIE_X4_SRIS_EN,
   (sris_params->kp_counter_gen3 <<
    PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN3_SRIS_SHIFT) |
   (sris_params->kp_counter_gen21 <<
    PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_GEN21_SRIS_SHIFT) |
   PCIE_W_GLOBAL_CTRL_SRIS_KP_COUNTER_VALUE_PCIE_X4_SRIS_EN);
  break;

 case 130:
  if ((link_speed == AL_PCIE_LINK_SPEED_GEN3) && (sris_params->kp_counter_gen3)) {
   al_err("PCIe %d: cannot config Gen%d SRIS with rev_id[%d]\n",
    pcie_port->port_id, al_pcie_speed_gen_code(link_speed),
    pcie_port->rev_id);
   return -EINVAL;
  }

  al_reg_write32_masked(&regs->port_regs->filter_mask_reg_1,
   PCIE_FLT_MASK_SKP_INT_VAL_MASK,
   sris_params->kp_counter_gen21);
  break;

 default:
  al_err("PCIe %d: SRIS config is not supported in rev_id[%d]\n",
   pcie_port->port_id, pcie_port->rev_id);
  al_assert(0);
  return -EINVAL;
 }

 return rc;
}
