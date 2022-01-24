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
typedef  enum al_pcie_link_speed { ____Placeholder_al_pcie_link_speed } al_pcie_link_speed ;
struct TYPE_2__ {int /*<<< orphan*/  gen2_ctrl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct al_pcie_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct al_pcie_port *pcie_port,
			      enum al_pcie_link_speed new_speed)
{
	struct al_pcie_regs *regs = pcie_port->regs;

	if (!FUNC2(pcie_port)) {
		FUNC1("PCIe %d: link not started, cannot change speed\n", pcie_port->port_id);
		return -EINVAL;
	}

	FUNC0("PCIe %d: changing speed to %d\n", pcie_port->port_id, new_speed);

	FUNC3(pcie_port, new_speed);

	FUNC4(&regs->port_regs->gen2_ctrl,
		PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE,
		PCIE_PORT_GEN2_CTRL_DIRECT_SPEED_CHANGE);

	return 0;
}