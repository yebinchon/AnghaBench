
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
 int al_serdes_grp_reg_read (struct al_serdes_grp_obj*,int,int ,int ) ;

__attribute__((used)) static enum al_serdes_pcie_rate al_serdes_lane_pcie_rate_get(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_lane lane)
{
 return (al_serdes_grp_reg_read(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PCS,
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_REG_NUM) &
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_MASK) >>
  SERDES_IREG_FLD_PCS_VPCSIF_OVR_RATE_SHIFT;
}
