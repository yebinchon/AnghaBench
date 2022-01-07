
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_regs {TYPE_1__* core_space; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
struct al_pcie_core_aer_regs {int * header_log; } ;
struct TYPE_2__ {struct al_pcie_core_aer_regs* aer; } ;


 int AL_PCIE_AER_ERR_TLP_HDR_NUM_DWORDS ;
 int al_reg_read32 (int *) ;

__attribute__((used)) static void
al_pcie_aer_err_tlp_hdr_get_aux(
  struct al_pcie_port *pcie_port,
  unsigned int pf_num,
 uint32_t hdr[AL_PCIE_AER_ERR_TLP_HDR_NUM_DWORDS])
{
 struct al_pcie_regs *regs = pcie_port->regs;
 struct al_pcie_core_aer_regs *aer_regs = regs->core_space[pf_num].aer;
 int i;

 for (i = 0; i < AL_PCIE_AER_ERR_TLP_HDR_NUM_DWORDS; i++)
  hdr[i] = al_reg_read32(&aer_regs->header_log[i]);
}
