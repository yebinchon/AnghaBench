
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port_init; } ;
struct TYPE_4__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {int port_id; scalar_t__ regs; } ;


 int PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK ;
 int al_dbg (char*,int ) ;
 int al_pcie_is_link_started (struct al_pcie_port*) ;
 int al_reg_write32_masked (int ,int ,int ) ;
 int al_warn (char*,int ) ;

int
al_pcie_link_stop(struct al_pcie_port *pcie_port)
{
 struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;

 if (!al_pcie_is_link_started(pcie_port)) {
  al_warn("PCIe %d: trying to stop a non-started link\n",
   pcie_port->port_id);
 }

 al_dbg("PCIe_%d: stop port link.\n", pcie_port->port_id);

 al_reg_write32_masked(
   regs->app.global_ctrl.port_init,
   PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK,
   ~PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK);

 return 0;
}
