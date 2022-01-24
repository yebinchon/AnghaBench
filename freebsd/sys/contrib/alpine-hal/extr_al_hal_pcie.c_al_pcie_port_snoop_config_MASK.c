#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  master_awctl; int /*<<< orphan*/  master_arctl; } ;
struct TYPE_3__ {TYPE_2__ ctrl; } ;
struct al_pcie_regs {TYPE_1__ axi; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;
typedef  scalar_t__ al_bool ;

/* Variables and functions */
 int PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP ; 
 int PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP ; 
 int PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP ; 
 int PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC2(struct al_pcie_port *pcie_port, al_bool enable_axi_snoop)
{
	struct al_pcie_regs *regs = pcie_port->regs;

	/* Set snoop mode */
	FUNC0("PCIE_%d: snoop mode %s\n",
			pcie_port->port_id, enable_axi_snoop ? "enable" : "disable");

	if (enable_axi_snoop) {
		FUNC1(regs->axi.ctrl.master_arctl,
			PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP | PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP,
			PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP | PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP);

		FUNC1(regs->axi.ctrl.master_awctl,
			PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP | PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP,
			PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP | PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP);
	} else {
		FUNC1(regs->axi.ctrl.master_arctl,
			PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP | PCIE_AXI_CTRL_MASTER_ARCTL_SNOOP,
			PCIE_AXI_CTRL_MASTER_ARCTL_OVR_SNOOP);

		FUNC1(regs->axi.ctrl.master_awctl,
			PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP | PCIE_AXI_CTRL_MASTER_AWCTL_SNOOP,
			PCIE_AXI_CTRL_MASTER_AWCTL_OVR_SNOOP);
	}
	return 0;
}