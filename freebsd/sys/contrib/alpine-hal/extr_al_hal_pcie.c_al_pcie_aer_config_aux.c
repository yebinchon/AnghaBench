
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_regs {TYPE_1__* core_space; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
struct al_pcie_core_aer_regs {int cap_and_ctrl; int uncorr_err_severity; int uncorr_err_mask; int corr_err_mask; int header; } ;
struct al_pcie_aer_params {int enabled_corr_err; int enabled_uncorr_non_fatal_err; int enabled_uncorr_fatal_err; scalar_t__ ecrc_gen_en; scalar_t__ ecrc_chk_en; } ;
struct TYPE_2__ {int pcie_dev_ctrl_status; struct al_pcie_core_aer_regs* aer; } ;


 int AL_PCIE_AER_UNCORR_UNSUPRT_REQ_ERR ;
 scalar_t__ AL_TRUE ;
 int EIO ;
 int PCIE_AER_CAP_ID_MASK ;
 int PCIE_AER_CAP_ID_SHIFT ;
 int PCIE_AER_CAP_ID_VAL ;
 int PCIE_AER_CAP_VER_MASK ;
 int PCIE_AER_CAP_VER_SHIFT ;
 int PCIE_AER_CAP_VER_VAL ;
 int PCIE_AER_CTRL_STAT_ECRC_CHK_EN ;
 int PCIE_AER_CTRL_STAT_ECRC_GEN_EN ;
 int PCIE_PORT_DEV_CTRL_STATUS_CORR_ERR_REPORT_EN ;
 int PCIE_PORT_DEV_CTRL_STATUS_FTL_ERR_REPORT_EN ;
 int PCIE_PORT_DEV_CTRL_STATUS_NON_FTL_ERR_REPORT_EN ;
 int PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN ;
 int al_pcie_ecrc_gen_ob_atu_enable (struct al_pcie_port*,unsigned int) ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int) ;
 int al_reg_write32_masked (int ,int,int) ;

__attribute__((used)) static int
al_pcie_aer_config_aux(
  struct al_pcie_port *pcie_port,
  unsigned int pf_num,
  struct al_pcie_aer_params *params)
{
 struct al_pcie_regs *regs = pcie_port->regs;
 struct al_pcie_core_aer_regs *aer_regs = regs->core_space[pf_num].aer;
 uint32_t reg_val;

 reg_val = al_reg_read32(&aer_regs->header);

 if (((reg_val & PCIE_AER_CAP_ID_MASK) >> PCIE_AER_CAP_ID_SHIFT) !=
  PCIE_AER_CAP_ID_VAL)
  return -EIO;

 if (((reg_val & PCIE_AER_CAP_VER_MASK) >> PCIE_AER_CAP_VER_SHIFT) !=
  PCIE_AER_CAP_VER_VAL)
  return -EIO;

 al_reg_write32(&aer_regs->corr_err_mask, ~params->enabled_corr_err);

 al_reg_write32(&aer_regs->uncorr_err_mask,
  (~params->enabled_uncorr_non_fatal_err) |
  (~params->enabled_uncorr_fatal_err));

 al_reg_write32(&aer_regs->uncorr_err_severity,
  params->enabled_uncorr_fatal_err);

 al_reg_write32(&aer_regs->cap_and_ctrl,
  (params->ecrc_gen_en ? PCIE_AER_CTRL_STAT_ECRC_GEN_EN : 0) |
  (params->ecrc_chk_en ? PCIE_AER_CTRL_STAT_ECRC_CHK_EN : 0));
 if (params->ecrc_gen_en == AL_TRUE) {
  al_pcie_ecrc_gen_ob_atu_enable(pcie_port, pf_num);
 }

 al_reg_write32_masked(
  regs->core_space[pf_num].pcie_dev_ctrl_status,
  PCIE_PORT_DEV_CTRL_STATUS_CORR_ERR_REPORT_EN |
  PCIE_PORT_DEV_CTRL_STATUS_NON_FTL_ERR_REPORT_EN |
  PCIE_PORT_DEV_CTRL_STATUS_FTL_ERR_REPORT_EN |
  PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN,
  (params->enabled_corr_err ?
   PCIE_PORT_DEV_CTRL_STATUS_CORR_ERR_REPORT_EN : 0) |
  (params->enabled_uncorr_non_fatal_err ?
   PCIE_PORT_DEV_CTRL_STATUS_NON_FTL_ERR_REPORT_EN : 0) |
  (params->enabled_uncorr_fatal_err ?
   PCIE_PORT_DEV_CTRL_STATUS_FTL_ERR_REPORT_EN : 0) |
  ((params->enabled_uncorr_non_fatal_err &
    AL_PCIE_AER_UNCORR_UNSUPRT_REQ_ERR) ?
   PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN : 0) |
  ((params->enabled_uncorr_fatal_err &
    AL_PCIE_AER_UNCORR_UNSUPRT_REQ_ERR) ?
   PCIE_PORT_DEV_CTRL_STATUS_UNSUP_REQ_REPORT_EN : 0));

 return 0;
}
