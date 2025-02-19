
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;


 int AL_SRDS_NUM_LANES ;
 int AL_SRDS_REG_PAGE_4_COMMON ;
 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_FLD_CMNPCIEGEN3_LOCWREN_REG_NUM ;
 int SERDES_IREG_FLD_CMNPCSBIST_LOCWREN ;
 int SERDES_IREG_FLD_LANEPCSPSTATE_LOCWREN_REG_NUM ;
 int SERDES_IREG_FLD_LB_LOCWREN ;
 int SERDES_IREG_FLD_PCSRXBIST_LOCWREN ;
 int SERDES_IREG_FLD_PCSTXBIST_LOCWREN ;
 int SERDES_IREG_FLD_PCSTXBIST_LOCWREN_REG_NUM ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int,int ,int ,int,int) ;

__attribute__((used)) static void al_serdes_bist_overrides_disable(
 struct al_serdes_grp_obj *obj)
{
 int i;

 al_serdes_grp_reg_masked_write(
  obj,
  AL_SRDS_REG_PAGE_4_COMMON,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_CMNPCIEGEN3_LOCWREN_REG_NUM,
  SERDES_IREG_FLD_CMNPCSBIST_LOCWREN,
  SERDES_IREG_FLD_CMNPCSBIST_LOCWREN);

 for (i = 0; i < AL_SRDS_NUM_LANES; i++) {
  al_serdes_grp_reg_masked_write(
   obj,
   (enum al_serdes_reg_page)i,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_FLD_LANEPCSPSTATE_LOCWREN_REG_NUM,
   SERDES_IREG_FLD_LB_LOCWREN |
   SERDES_IREG_FLD_PCSRXBIST_LOCWREN,
   SERDES_IREG_FLD_LB_LOCWREN |
   SERDES_IREG_FLD_PCSRXBIST_LOCWREN);

  al_serdes_grp_reg_masked_write(
   obj,
   (enum al_serdes_reg_page)i,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_FLD_PCSTXBIST_LOCWREN_REG_NUM,
   SERDES_IREG_FLD_PCSTXBIST_LOCWREN,
   SERDES_IREG_FLD_PCSTXBIST_LOCWREN);
 }
}
