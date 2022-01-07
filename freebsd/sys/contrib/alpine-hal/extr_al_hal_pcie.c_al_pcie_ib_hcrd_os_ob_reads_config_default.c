
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_pcie_port {int port_id; int rev_id; } ;
struct al_pcie_ib_hcrd_os_ob_reads_config {int nof_p_hdr; int nof_np_hdr; int nof_cpl_hdr; int nof_outstanding_ob_reads; } ;




 int AL_PCIE_REV_1_2_EP_NOF_CPL_HDR_DEFAULT ;
 int AL_PCIE_REV_1_2_EP_NOF_NP_HDR_DEFAULT ;
 int AL_PCIE_REV_1_2_EP_NOF_P_HDR_DEFAULT ;
 int AL_PCIE_REV_1_2_EP_OB_OS_READS_DEFAULT ;
 int AL_PCIE_REV_1_2_RC_NOF_CPL_HDR_DEFAULT ;
 int AL_PCIE_REV_1_2_RC_NOF_NP_HDR_DEFAULT ;
 int AL_PCIE_REV_1_2_RC_NOF_P_HDR_DEFAULT ;
 int AL_PCIE_REV_1_2_RC_OB_OS_READS_DEFAULT ;
 int AL_PCIE_REV_3_EP_NOF_CPL_HDR_DEFAULT ;
 int AL_PCIE_REV_3_EP_NOF_NP_HDR_DEFAULT ;
 int AL_PCIE_REV_3_EP_NOF_P_HDR_DEFAULT ;
 int AL_PCIE_REV_3_EP_OB_OS_READS_DEFAULT ;
 int AL_PCIE_REV_3_RC_NOF_CPL_HDR_DEFAULT ;
 int AL_PCIE_REV_3_RC_NOF_NP_HDR_DEFAULT ;
 int AL_PCIE_REV_3_RC_NOF_P_HDR_DEFAULT ;
 int AL_PCIE_REV_3_RC_OB_OS_READS_DEFAULT ;
 int AL_PCIE_REV_ID_3 ;
 int al_assert (int ) ;
 int al_err (char*,int ) ;
 int al_pcie_operating_mode_get (struct al_pcie_port*) ;
 int al_pcie_port_ib_hcrd_os_ob_reads_config (struct al_pcie_port*,struct al_pcie_ib_hcrd_os_ob_reads_config*) ;

__attribute__((used)) static void
al_pcie_ib_hcrd_os_ob_reads_config_default(
 struct al_pcie_port *pcie_port)
{

 struct al_pcie_ib_hcrd_os_ob_reads_config ib_hcrd_os_ob_reads_config;

 switch (al_pcie_operating_mode_get(pcie_port)) {
 case 128:
  if (pcie_port->rev_id == AL_PCIE_REV_ID_3) {
   ib_hcrd_os_ob_reads_config.nof_outstanding_ob_reads =
    AL_PCIE_REV_3_RC_OB_OS_READS_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_cpl_hdr =
    AL_PCIE_REV_3_RC_NOF_CPL_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_np_hdr =
    AL_PCIE_REV_3_RC_NOF_NP_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_p_hdr =
    AL_PCIE_REV_3_RC_NOF_P_HDR_DEFAULT;
  } else {
   ib_hcrd_os_ob_reads_config.nof_outstanding_ob_reads =
    AL_PCIE_REV_1_2_RC_OB_OS_READS_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_cpl_hdr =
    AL_PCIE_REV_1_2_RC_NOF_CPL_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_np_hdr =
    AL_PCIE_REV_1_2_RC_NOF_NP_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_p_hdr =
    AL_PCIE_REV_1_2_RC_NOF_P_HDR_DEFAULT;
  }
  break;

 case 129:
  if (pcie_port->rev_id == AL_PCIE_REV_ID_3) {
   ib_hcrd_os_ob_reads_config.nof_outstanding_ob_reads =
    AL_PCIE_REV_3_EP_OB_OS_READS_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_cpl_hdr =
    AL_PCIE_REV_3_EP_NOF_CPL_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_np_hdr =
    AL_PCIE_REV_3_EP_NOF_NP_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_p_hdr =
    AL_PCIE_REV_3_EP_NOF_P_HDR_DEFAULT;
  } else {
   ib_hcrd_os_ob_reads_config.nof_outstanding_ob_reads =
    AL_PCIE_REV_1_2_EP_OB_OS_READS_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_cpl_hdr =
    AL_PCIE_REV_1_2_EP_NOF_CPL_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_np_hdr =
    AL_PCIE_REV_1_2_EP_NOF_NP_HDR_DEFAULT;
   ib_hcrd_os_ob_reads_config.nof_p_hdr =
    AL_PCIE_REV_1_2_EP_NOF_P_HDR_DEFAULT;
  }
  break;

 default:
  al_err("PCIe %d: outstanding outbound transactions could not be configured - unknown operating mode\n",
   pcie_port->port_id);
  al_assert(0);
 }

 al_pcie_port_ib_hcrd_os_ob_reads_config(pcie_port, &ib_hcrd_os_ob_reads_config);
}
