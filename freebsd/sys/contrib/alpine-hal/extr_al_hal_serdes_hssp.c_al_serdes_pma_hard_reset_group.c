
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;
typedef scalar_t__ al_bool ;


 int AL_SRDS_REG_PAGE_4_COMMON ;
 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_MASK ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_REG_NUM ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_VAL_REGS ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_MASK ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_REG_NUM ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_ASSERT ;
 int SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_DEASSERT ;
 int al_serdes_group_rx_rate_change_sw_flow_dis (struct al_serdes_grp_obj*) ;
 int al_serdes_group_rx_rate_change_sw_flow_en_cond (struct al_serdes_grp_obj*) ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void al_serdes_pma_hard_reset_group(
 struct al_serdes_grp_obj *obj,
 al_bool enable)
{
 if (enable)
  al_serdes_group_rx_rate_change_sw_flow_dis(obj);


 al_serdes_grp_reg_masked_write(
  obj,
  AL_SRDS_REG_PAGE_4_COMMON,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_REG_NUM,
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_MASK,
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASSEN_SYNTH_VAL_REGS);


 al_serdes_grp_reg_masked_write(
  obj,
  AL_SRDS_REG_PAGE_4_COMMON,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_REG_NUM,
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_MASK,
  enable ?
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_ASSERT :
  SERDES_IREG_FLD_CMNCTLPOR_HARDRSTBYPASS_SYNTH_VAL_DEASSERT);

 if (!enable)
  al_serdes_group_rx_rate_change_sw_flow_en_cond(obj);
}
