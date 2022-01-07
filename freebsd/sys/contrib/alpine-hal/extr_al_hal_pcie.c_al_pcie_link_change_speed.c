
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct al_pcie_port {int port_id; struct al_pcie_regs* regs; } ;
typedef enum al_pcie_link_speed { ____Placeholder_al_pcie_link_speed } al_pcie_link_speed ;
struct TYPE_2__ {int gen2_ctrl; } ;


 int EINVAL ;
 int PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE ;
 int al_dbg (char*,int ,int) ;
 int al_err (char*,int ) ;
 int al_pcie_is_link_started (struct al_pcie_port*) ;
 int al_pcie_port_link_speed_ctrl_set (struct al_pcie_port*,int) ;
 int al_reg_write32_masked (int *,int ,int ) ;

int
al_pcie_link_change_speed(struct al_pcie_port *pcie_port,
         enum al_pcie_link_speed new_speed)
{
 struct al_pcie_regs *regs = pcie_port->regs;

 if (!al_pcie_is_link_started(pcie_port)) {
  al_err("PCIe %d: link not started, cannot change speed\n", pcie_port->port_id);
  return -EINVAL;
 }

 al_dbg("PCIe %d: changing speed to %d\n", pcie_port->port_id, new_speed);

 al_pcie_port_link_speed_ctrl_set(pcie_port, new_speed);

 al_reg_write32_masked(&regs->port_regs->gen2_ctrl,
  PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE,
  PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE);

 return 0;
}
