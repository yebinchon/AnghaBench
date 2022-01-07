
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;
typedef scalar_t__ al_bool ;


 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_FLD_PCSRXBIST_EN ;
 int SERDES_IREG_FLD_PCSRXBIST_EN_REG_NUM ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int,int ,int ,int ,int ) ;

__attribute__((used)) static void al_serdes_bist_rx_enable(
 struct al_serdes_grp_obj *obj,
 enum al_serdes_lane lane,
 al_bool enable)
{
 al_serdes_grp_reg_masked_write(
  obj,
  (enum al_serdes_reg_page)lane,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_PCSRXBIST_EN_REG_NUM,
  SERDES_IREG_FLD_PCSRXBIST_EN,
  enable ? SERDES_IREG_FLD_PCSRXBIST_EN : 0);
}
