
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_pcie_rate { ____Placeholder_al_serdes_pcie_rate } al_serdes_pcie_rate ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;


 int AL_SRDS_REG_TYPE_PCS ;
 int SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_MASK ;
 int SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_REG_NUM ;
 int SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_SHIFT ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int,int ,int ,int ,int) ;

__attribute__((used)) static void al_serdes_lane_pcie_rate_set(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_lane lane,
 enum al_serdes_pcie_rate rate)
{
 al_serdes_grp_reg_masked_write(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PCS,
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_REG_NUM,
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_MASK,
  rate << SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_SHIFT);
}
