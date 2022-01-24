#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_link_ctrl; } ;

/* Variables and functions */
 int PCIE_PORT_LINK_CTRL_LB_EN_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct al_pcie_port *pcie_port)
{
	struct al_pcie_regs *regs = pcie_port->regs;

	FUNC0("PCIe %d: Exit REMOTE Loopback mode", pcie_port->port_id);

	FUNC1(&regs->port_regs->port_link_ctrl,
			      1 << PCIE_PORT_LINK_CTRL_LB_EN_SHIFT,
			      0);
	return 0;
}