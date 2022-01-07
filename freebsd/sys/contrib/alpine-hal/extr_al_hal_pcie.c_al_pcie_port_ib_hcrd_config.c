
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct TYPE_4__ {int nof_p_hdr; int nof_np_hdr; } ;
struct al_pcie_port {TYPE_2__ ib_hcrd_config; struct al_pcie_regs* regs; } ;
struct TYPE_3__ {int vc0_non_posted_rcv_q_ctrl; int vc0_posted_rcv_q_ctrl; } ;


 int RADM_NPQ_HCRD_VC0_MASK ;
 int RADM_NPQ_HCRD_VC0_SHIFT ;
 int RADM_PQ_HCRD_VC0_MASK ;
 int RADM_PQ_HCRD_VC0_SHIFT ;
 int al_reg_write32_masked (int *,int ,int) ;

__attribute__((used)) static void
al_pcie_port_ib_hcrd_config(struct al_pcie_port *pcie_port)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 al_reg_write32_masked(
  &regs->port_regs->vc0_posted_rcv_q_ctrl,
  RADM_PQ_HCRD_VC0_MASK,
  (pcie_port->ib_hcrd_config.nof_p_hdr - 1)
   << RADM_PQ_HCRD_VC0_SHIFT);

 al_reg_write32_masked(
  &regs->port_regs->vc0_non_posted_rcv_q_ctrl,
  RADM_NPQ_HCRD_VC0_MASK,
  (pcie_port->ib_hcrd_config.nof_np_hdr - 1)
   << RADM_NPQ_HCRD_VC0_SHIFT);
}
