
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct al_pcie_regs {TYPE_1__* core_space; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
struct al_pcie_pf {unsigned int pf_num; struct al_pcie_port* pcie_port; } ;
typedef scalar_t__ al_bool ;
struct TYPE_2__ {int * config_header; } ;


 scalar_t__ AL_FALSE ;
 scalar_t__ AL_TRUE ;
 int al_pcie_port_wr_to_ro_set (struct al_pcie_port*,scalar_t__) ;
 int al_reg_write32 (int *,int ) ;
 int al_reg_write32_dbi_cs2 (struct al_pcie_port*,int *,int ) ;

void
al_pcie_local_cfg_space_write(
 struct al_pcie_pf *pcie_pf,
 unsigned int reg_offset,
 uint32_t data,
 al_bool cs2,
 al_bool allow_ro_wr)
{
 struct al_pcie_port *pcie_port = pcie_pf->pcie_port;
 struct al_pcie_regs *regs = pcie_port->regs;
 unsigned int pf_num = pcie_pf->pf_num;
 uint32_t *offset = &regs->core_space[pf_num].config_header[reg_offset];

 if (allow_ro_wr)
  al_pcie_port_wr_to_ro_set(pcie_port, AL_TRUE);

 if (cs2 == AL_FALSE)
  al_reg_write32(offset, data);
 else
  al_reg_write32_dbi_cs2(pcie_port, offset, data);

 if (allow_ro_wr)
  al_pcie_port_wr_to_ro_set(pcie_port, AL_FALSE);
}
