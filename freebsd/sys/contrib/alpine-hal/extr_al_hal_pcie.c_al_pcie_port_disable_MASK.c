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
struct al_pcie_port {unsigned int port_id; scalar_t__ pbs_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcie_conf_1; } ;
struct al_pbs_regs {TYPE_1__ unit; } ;

/* Variables and functions */
 unsigned int PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct al_pcie_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

void
FUNC3(struct al_pcie_port *pcie_port)
{
	struct al_pbs_regs *pbs_reg_base =
				(struct al_pbs_regs *)pcie_port->pbs_regs;
	unsigned int port_id = pcie_port->port_id;

	if (!FUNC0(pcie_port)) {
		FUNC2("PCIe %d: trying to disable a non-enabled port\n",
			pcie_port->port_id);
	}

	/* Assert core reset */
	FUNC1(
		&pbs_reg_base->unit.pcie_conf_1,
		1 << (port_id + PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT),
		0);
}