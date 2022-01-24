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
typedef  int uint32_t ;
struct al_pcie_port {int /*<<< orphan*/  port_id; scalar_t__ pbs_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcie_conf_1; } ;
struct al_pbs_regs {TYPE_1__ unit; } ;
typedef  int al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_MASK ; 
 int /*<<< orphan*/  PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

al_bool
FUNC3(struct al_pcie_port *pcie_port)
{
	struct al_pbs_regs *pbs_reg_base = (struct al_pbs_regs *)pcie_port->pbs_regs;
	uint32_t pcie_exist = FUNC2(&pbs_reg_base->unit.pcie_conf_1);

	uint32_t ports_enabled = FUNC1(pcie_exist,
		PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_MASK,
		PBS_UNIT_PCIE_CONF_1_PCIE_EXIST_SHIFT);

	return (FUNC1(ports_enabled, FUNC0(pcie_port->port_id),
		pcie_port->port_id) == 1);
}