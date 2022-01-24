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
struct TYPE_3__ {int /*<<< orphan*/  port_init; } ;
struct TYPE_4__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; scalar_t__ regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct al_pcie_port *pcie_port)
{
	struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;

	if (!FUNC2(pcie_port)) {
		FUNC1("PCIe %d: port not enabled, cannot start link\n",
			pcie_port->port_id);
		return -EINVAL;
	}

	FUNC0("PCIe_%d: start port link.\n", pcie_port->port_id);

	FUNC3(
			regs->app.global_ctrl.port_init,
			PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK,
			PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK);

	return 0;
}