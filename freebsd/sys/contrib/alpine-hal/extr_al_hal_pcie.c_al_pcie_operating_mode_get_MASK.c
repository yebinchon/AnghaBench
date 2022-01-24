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
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;
struct TYPE_4__ {TYPE_1__ pcie_global; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;
typedef  enum al_pcie_operating_mode { ____Placeholder_al_pcie_operating_mode } al_pcie_operating_mode ;

/* Variables and functions */
 int AL_PCIE_OPERATING_MODE_EP ; 
 int AL_PCIE_OPERATING_MODE_RC ; 
 int AL_PCIE_OPERATING_MODE_UNKNOWN ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_EP 129 
 int /*<<< orphan*/  PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK ; 
#define  PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_RC 128 
 int /*<<< orphan*/  PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct al_pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

enum al_pcie_operating_mode
FUNC4(
	struct al_pcie_port *pcie_port)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	uint32_t reg, device_type;

	FUNC1(pcie_port);

	reg = FUNC3(regs->axi.pcie_global.conf);

	device_type = FUNC0(reg,
			PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_MASK,
			PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_SHIFT);

	switch (device_type) {
	case PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_EP:
		return AL_PCIE_OPERATING_MODE_EP;
	case PCIE_AXI_MISC_PCIE_GLOBAL_CONF_DEV_TYPE_RC:
		return AL_PCIE_OPERATING_MODE_RC;
	default:
		FUNC2("PCIe %d: unknown device type (%d) in global conf register.\n",
			pcie_port->port_id, device_type);
	}
	return AL_PCIE_OPERATING_MODE_UNKNOWN;
}