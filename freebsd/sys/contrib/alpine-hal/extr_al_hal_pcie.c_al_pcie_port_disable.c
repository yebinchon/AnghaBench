
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_pcie_port {unsigned int port_id; scalar_t__ pbs_regs; } ;
struct TYPE_2__ {int pcie_conf_1; } ;
struct al_pbs_regs {TYPE_1__ unit; } ;


 unsigned int PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT ;
 int al_pcie_port_is_enabled (struct al_pcie_port*) ;
 int al_reg_write32_masked (int *,int,int ) ;
 int al_warn (char*,unsigned int) ;

void
al_pcie_port_disable(struct al_pcie_port *pcie_port)
{
 struct al_pbs_regs *pbs_reg_base =
    (struct al_pbs_regs *)pcie_port->pbs_regs;
 unsigned int port_id = pcie_port->port_id;

 if (!al_pcie_port_is_enabled(pcie_port)) {
  al_warn("PCIe %d: trying to disable a non-enabled port\n",
   pcie_port->port_id);
 }


 al_reg_write32_masked(
  &pbs_reg_base->unit.pcie_conf_1,
  1 << (port_id + PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT),
  0);
}
