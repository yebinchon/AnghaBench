
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_hal_eth_adapter {TYPE_2__* ec_regs_base; } ;
struct al_eth_pth_ext_update_params {int triggers; int method; } ;
struct TYPE_3__ {int int_update_ctrl; } ;
struct TYPE_4__ {TYPE_1__ pth; } ;


 int AL_REG_FIELD_SET (int ,int ,int ,int ) ;
 int EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_MASK ;
 int EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_SHIFT ;
 int EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_MASK ;
 int EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_SHIFT ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_eth_pth_ext_update_config(struct al_hal_eth_adapter *adapter,
     struct al_eth_pth_ext_update_params * params)
{
 uint32_t reg;

 reg = al_reg_read32(&adapter->ec_regs_base->pth.int_update_ctrl);
 AL_REG_FIELD_SET(reg, EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_MASK,
    EC_PTH_INT_UPDATE_CTRL_UPDATE_METHOD_SHIFT,
    params->method);

 AL_REG_FIELD_SET(reg, EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_MASK,
    EC_PTH_EXT_UPDATE_CTRL_EXT_TRIG_EN_SHIFT,
    params->triggers);
 al_reg_write32(&adapter->ec_regs_base->pth.int_update_ctrl, reg);
 return 0;
}
