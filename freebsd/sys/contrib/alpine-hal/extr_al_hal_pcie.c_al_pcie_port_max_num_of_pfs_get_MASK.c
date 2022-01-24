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
typedef  unsigned int uint32_t ;
struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct al_pcie_port {scalar_t__ rev_id; struct al_pcie_regs* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer_ctrl_max_func_num; } ;

/* Variables and functions */
 scalar_t__ AL_PCIE_REV_ID_3 ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_PORT_GEN3_MAX_FUNC_NUM ; 
 scalar_t__ FUNC1 (struct al_pcie_port*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC3(struct al_pcie_port *pcie_port)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	uint32_t max_func_num;
	uint32_t max_num_of_pfs;

	/**
	 * Only in REV3, when port is already enabled, max_num_of_pfs is already
	 * initialized, return it. Otherwise, return default: 1 PF
	 */
	if ((pcie_port->rev_id == AL_PCIE_REV_ID_3)
		&& FUNC1(pcie_port)) {
		max_func_num = FUNC2(&regs->port_regs->timer_ctrl_max_func_num);
		max_num_of_pfs = FUNC0(max_func_num, PCIE_PORT_GEN3_MAX_FUNC_NUM, 0) + 1;
		return max_num_of_pfs;
	}
	return 1;
}