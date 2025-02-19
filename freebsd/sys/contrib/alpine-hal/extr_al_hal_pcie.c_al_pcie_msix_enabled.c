
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_regs {TYPE_2__* core_space; } ;
struct al_pcie_pf {size_t pf_num; TYPE_1__* pcie_port; } ;
typedef int al_bool ;
struct TYPE_4__ {int msix_cap_base; } ;
struct TYPE_3__ {struct al_pcie_regs* regs; } ;


 int AL_FALSE ;
 int AL_PCI_MSIX_MSGCTRL_EN ;
 int AL_TRUE ;
 int al_reg_read32 (int ) ;

al_bool
al_pcie_msix_enabled(struct al_pcie_pf *pcie_pf)
{
 struct al_pcie_regs *regs = pcie_pf->pcie_port->regs;
 uint32_t msix_reg0 = al_reg_read32(regs->core_space[pcie_pf->pf_num].msix_cap_base);

 if (msix_reg0 & AL_PCI_MSIX_MSGCTRL_EN)
  return AL_TRUE;
 return AL_FALSE;
}
