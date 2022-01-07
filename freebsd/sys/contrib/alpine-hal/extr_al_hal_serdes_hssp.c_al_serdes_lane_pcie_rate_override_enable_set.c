
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;
typedef scalar_t__ al_bool ;


 int AL_SRDS_REG_TYPE_PCS ;
 int SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA ;
 int SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA_REG_NUM ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void al_serdes_lane_pcie_rate_override_enable_set(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_lane lane,
 al_bool en)
{
 al_serdes_grp_reg_masked_write(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PCS,
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA_REG_NUM,
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA,
  en ? SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_ENA : 0);
}
