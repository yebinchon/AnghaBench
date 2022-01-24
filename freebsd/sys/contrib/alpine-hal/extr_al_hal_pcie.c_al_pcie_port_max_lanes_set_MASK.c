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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;
struct TYPE_4__ {TYPE_1__ pcie_global; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {scalar_t__ rev_id; int /*<<< orphan*/  max_lanes; int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AL_PCIE_REV_ID_3 ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK ; 
 int /*<<< orphan*/  PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct al_pcie_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct al_pcie_port *pcie_port, uint8_t lanes)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	uint32_t active_lanes_val;

	if (FUNC2(pcie_port)) {
		FUNC1("PCIe %d: already enabled, cannot set max lanes\n",
			pcie_port->port_id);
		return -EINVAL;
	}

	/* convert to bitmask format (4 ->'b1111, 2 ->'b11, 1 -> 'b1) */
	active_lanes_val = FUNC0(lanes);

	FUNC3(regs->axi.pcie_global.conf,
		(pcie_port->rev_id == AL_PCIE_REV_ID_3) ?
		PCIE_REV3_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK :
		PCIE_REV1_2_AXI_MISC_PCIE_GLOBAL_CONF_NOF_ACT_LANES_MASK,
		active_lanes_val);

	pcie_port->max_lanes = lanes;
	return 0;
}