
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct al_serdes_grp_obj {int dummy; } ;
struct al_serdes_adv_tx_params {int slew_rate; int c_minus_1; int c_plus_2; int c_plus_1; int total_driver_units; int amp; int override; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;


 int AL_REG_FIELD_SET (scalar_t__,int ,int ,int ) ;
 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN ;
 int SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN_REG_NUM ;
 int SERDES_IREG_TX_DRV_1_HLEV_MASK ;
 int SERDES_IREG_TX_DRV_1_HLEV_SHIFT ;
 int SERDES_IREG_TX_DRV_1_LEVN_MASK ;
 int SERDES_IREG_TX_DRV_1_LEVN_SHIFT ;
 int SERDES_IREG_TX_DRV_1_REG_NUM ;
 int SERDES_IREG_TX_DRV_2_LEVNM1_MASK ;
 int SERDES_IREG_TX_DRV_2_LEVNM1_SHIFT ;
 int SERDES_IREG_TX_DRV_2_LEVNM2_MASK ;
 int SERDES_IREG_TX_DRV_2_LEVNM2_SHIFT ;
 int SERDES_IREG_TX_DRV_2_REG_NUM ;
 int SERDES_IREG_TX_DRV_3_LEVNP1_MASK ;
 int SERDES_IREG_TX_DRV_3_LEVNP1_SHIFT ;
 int SERDES_IREG_TX_DRV_3_REG_NUM ;
 int SERDES_IREG_TX_DRV_3_SLEW_MASK ;
 int SERDES_IREG_TX_DRV_3_SLEW_SHIFT ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int,int ,int ,int ,int ) ;
 int al_serdes_grp_reg_write (struct al_serdes_grp_obj*,int,int ,int ,scalar_t__) ;

__attribute__((used)) static void al_serdes_tx_advanced_params_set(struct al_serdes_grp_obj *obj,
          enum al_serdes_lane lane,
          void *tx_params)
{
 uint8_t reg = 0;
 struct al_serdes_adv_tx_params *params = tx_params;

 if (!params->override) {
  al_serdes_grp_reg_masked_write(obj,
   (enum al_serdes_reg_page)lane,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN_REG_NUM,
   SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN,
   SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN);

  return;
 }

 al_serdes_grp_reg_masked_write(obj,
   (enum al_serdes_reg_page)lane,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN_REG_NUM,
   SERDES_IREG_FLD_TX_DRV_OVERRIDE_EN,
   0);

 AL_REG_FIELD_SET(reg,
    SERDES_IREG_TX_DRV_1_HLEV_MASK,
    SERDES_IREG_TX_DRV_1_HLEV_SHIFT,
    params->amp);

 AL_REG_FIELD_SET(reg,
    SERDES_IREG_TX_DRV_1_LEVN_MASK,
    SERDES_IREG_TX_DRV_1_LEVN_SHIFT,
    params->total_driver_units);

 al_serdes_grp_reg_write(obj,
    (enum al_serdes_reg_page)lane,
    AL_SRDS_REG_TYPE_PMA,
    SERDES_IREG_TX_DRV_1_REG_NUM,
    reg);

 reg = 0;
 AL_REG_FIELD_SET(reg,
    SERDES_IREG_TX_DRV_2_LEVNM1_MASK,
    SERDES_IREG_TX_DRV_2_LEVNM1_SHIFT,
    params->c_plus_1);

 AL_REG_FIELD_SET(reg,
    SERDES_IREG_TX_DRV_2_LEVNM2_MASK,
    SERDES_IREG_TX_DRV_2_LEVNM2_SHIFT,
    params->c_plus_2);

 al_serdes_grp_reg_write(obj,
    (enum al_serdes_reg_page)lane,
    AL_SRDS_REG_TYPE_PMA,
    SERDES_IREG_TX_DRV_2_REG_NUM,
    reg);

 reg = 0;
 AL_REG_FIELD_SET(reg,
    SERDES_IREG_TX_DRV_3_LEVNP1_MASK,
    SERDES_IREG_TX_DRV_3_LEVNP1_SHIFT,
    params->c_minus_1);

 AL_REG_FIELD_SET(reg,
    SERDES_IREG_TX_DRV_3_SLEW_MASK,
    SERDES_IREG_TX_DRV_3_SLEW_SHIFT,
    params->slew_rate);

 al_serdes_grp_reg_write(obj,
    (enum al_serdes_reg_page)lane,
    AL_SRDS_REG_TYPE_PMA,
    SERDES_IREG_TX_DRV_3_REG_NUM,
    reg);

}
