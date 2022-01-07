
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
struct al_serdes_adv_tx_params {int total_driver_units; int c_plus_1; int c_minus_1; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;


 int SERDES_25G_LANE_DRV_TXEQ_CTRL1_ADDR ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_MASK ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_SHIFT ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL3_ADDR ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_MASK ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_SHIFT ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL5_ADDR ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_MASK ;
 int SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_SHIFT ;
 int al_serdes_25g_reg_masked_read (struct al_serdes_grp_obj*,int,int ,int ,int ,int *) ;

__attribute__((used)) static void al_serdes_25g_tx_advanced_params_get(struct al_serdes_grp_obj *obj,
  enum al_serdes_lane lane,
  void *tx_params)
{
 struct al_serdes_adv_tx_params *params = tx_params;

 al_serdes_25g_reg_masked_read(obj,
     (enum al_serdes_reg_page)lane,
     SERDES_25G_LANE_DRV_TXEQ_CTRL3_ADDR,
     SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_MASK,
     SERDES_25G_LANE_DRV_TXEQ_CTRL3_TXEQ_CM1_SHIFT,
     &params->c_minus_1);

 al_serdes_25g_reg_masked_read(obj,
     (enum al_serdes_reg_page)lane,
     SERDES_25G_LANE_DRV_TXEQ_CTRL1_ADDR,
     SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_MASK,
     SERDES_25G_LANE_DRV_TXEQ_CTRL1_TXEQ_C1_SHIFT,
     &params->c_plus_1);

 al_serdes_25g_reg_masked_read(obj,
     (enum al_serdes_reg_page)lane,
     SERDES_25G_LANE_DRV_TXEQ_CTRL5_ADDR,
     SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_MASK,
     SERDES_25G_LANE_DRV_TXEQ_CTRL5_DRV_SWING_SHIFT,
     &params->total_driver_units);
}
