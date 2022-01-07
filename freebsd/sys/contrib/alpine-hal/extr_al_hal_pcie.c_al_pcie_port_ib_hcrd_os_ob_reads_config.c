
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pcie_core_setup; } ;
struct TYPE_5__ {int cfg; } ;
struct TYPE_7__ {TYPE_2__ pre_configuration; TYPE_1__ init_fc; } ;
struct al_pcie_regs {TYPE_3__ axi; } ;
struct TYPE_8__ {int nof_np_hdr; int nof_p_hdr; } ;
struct al_pcie_port {scalar_t__ rev_id; TYPE_4__ ib_hcrd_config; int port_id; struct al_pcie_regs* regs; } ;
struct al_pcie_ib_hcrd_os_ob_reads_config {int nof_np_hdr; int nof_p_hdr; int nof_cpl_hdr; int nof_outstanding_ob_reads; } ;


 int AL_PCIE_REV3_IB_HCRD_SUM ;
 int AL_PCIE_REV_1_2_IB_HCRD_SUM ;
 scalar_t__ AL_PCIE_REV_ID_3 ;
 int EINVAL ;
 int PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_MASK ;
 int PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_SHIFT ;
 int PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_MASK ;
 int PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_SHIFT ;
 int PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_MASK ;
 int PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_SHIFT ;
 int PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_MASK ;
 int PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_SHIFT ;
 int PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_MASK ;
 int PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_SHIFT ;
 int PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_MASK ;
 int PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_SHIFT ;
 int PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_MASK ;
 int PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_SHIFT ;
 int al_assert (int) ;
 int al_err (char*,int ) ;
 scalar_t__ al_pcie_port_is_enabled (struct al_pcie_port*) ;
 int al_reg_write32_masked (int ,int,int) ;

int
al_pcie_port_ib_hcrd_os_ob_reads_config(
 struct al_pcie_port *pcie_port,
 struct al_pcie_ib_hcrd_os_ob_reads_config *ib_hcrd_os_ob_reads_config)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 if (al_pcie_port_is_enabled(pcie_port)) {
  al_err("PCIe %d: already enabled, cannot configure IB credits and OB OS reads\n",
   pcie_port->port_id);
  return -EINVAL;
 }

 al_assert(ib_hcrd_os_ob_reads_config->nof_np_hdr > 0);

 al_assert(ib_hcrd_os_ob_reads_config->nof_p_hdr > 0);

 al_assert(ib_hcrd_os_ob_reads_config->nof_cpl_hdr > 0);

 if (pcie_port->rev_id == AL_PCIE_REV_ID_3) {
  al_assert(
   (ib_hcrd_os_ob_reads_config->nof_cpl_hdr +
   ib_hcrd_os_ob_reads_config->nof_np_hdr +
   ib_hcrd_os_ob_reads_config->nof_p_hdr) ==
   AL_PCIE_REV3_IB_HCRD_SUM);

  al_reg_write32_masked(
   regs->axi.init_fc.cfg,
   PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_MASK |
   PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_MASK |
   PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_MASK,
   (ib_hcrd_os_ob_reads_config->nof_p_hdr <<
    PCIE_AXI_REV3_INIT_FC_CFG_NOF_P_HDR_SHIFT) |
   (ib_hcrd_os_ob_reads_config->nof_np_hdr <<
    PCIE_AXI_REV3_INIT_FC_CFG_NOF_NP_HDR_SHIFT) |
   (ib_hcrd_os_ob_reads_config->nof_cpl_hdr <<
    PCIE_AXI_REV3_INIT_FC_CFG_NOF_CPL_HDR_SHIFT));
 } else {
  al_assert(
   (ib_hcrd_os_ob_reads_config->nof_cpl_hdr +
   ib_hcrd_os_ob_reads_config->nof_np_hdr +
   ib_hcrd_os_ob_reads_config->nof_p_hdr) ==
   AL_PCIE_REV_1_2_IB_HCRD_SUM);

  al_reg_write32_masked(
   regs->axi.init_fc.cfg,
   PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_MASK |
   PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_MASK |
   PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_MASK,
   (ib_hcrd_os_ob_reads_config->nof_p_hdr <<
    PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_P_HDR_SHIFT) |
   (ib_hcrd_os_ob_reads_config->nof_np_hdr <<
    PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_NP_HDR_SHIFT) |
   (ib_hcrd_os_ob_reads_config->nof_cpl_hdr <<
    PCIE_AXI_REV1_2_INIT_FC_CFG_NOF_CPL_HDR_SHIFT));
 }

 al_reg_write32_masked(
  regs->axi.pre_configuration.pcie_core_setup,
  PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_MASK,
  ib_hcrd_os_ob_reads_config->nof_outstanding_ob_reads <<
  PCIE_AXI_CORE_SETUP_NOF_READS_ONSLAVE_INTRF_PCIE_CORE_SHIFT);


 pcie_port->ib_hcrd_config.nof_np_hdr =
  ib_hcrd_os_ob_reads_config->nof_np_hdr;
 pcie_port->ib_hcrd_config.nof_p_hdr =
  ib_hcrd_os_ob_reads_config->nof_p_hdr;

 return 0;
}
