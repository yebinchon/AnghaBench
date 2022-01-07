
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct al_pcie_port {int port_id; struct al_pcie_regs* regs; } ;
struct TYPE_2__ {int port_link_ctrl; } ;


 int PCIE_PORT_LINK_CTRL_LB_EN_SHIFT ;
 int al_dbg (char*,int ) ;
 int al_reg_write32_masked (int *,int,int ) ;

int
al_pcie_remote_loopback_exit(struct al_pcie_port *pcie_port)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 al_dbg("PCIe %d: Exit REMOTE Loopback mode", pcie_port->port_id);

 al_reg_write32_masked(&regs->port_regs->port_link_ctrl,
         1 << PCIE_PORT_LINK_CTRL_LB_EN_SHIFT,
         0);
 return 0;
}
