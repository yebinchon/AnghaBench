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
struct TYPE_3__ {int /*<<< orphan*/  cfg_target_bus; } ;
struct TYPE_4__ {TYPE_1__ ob_ctrl; } ;
struct al_pcie_regs {TYPE_2__ axi; } ;
struct al_pcie_port {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_MASK ; 
 int /*<<< orphan*/  PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_SHIFT ; 
 int /*<<< orphan*/  PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_MASK ; 
 int /*<<< orphan*/  PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(
	struct al_pcie_port *pcie_port,
	uint8_t target_bus,
	uint8_t mask_target_bus)
{
	struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;
	uint32_t reg;

	reg = FUNC1(regs->axi.ob_ctrl.cfg_target_bus);
	FUNC0(reg, PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_MASK,
			PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_MASK_SHIFT,
			mask_target_bus);
	FUNC0(reg, PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_MASK,
			PCIE_AXI_MISC_OB_CTRL_CFG_TARGET_BUS_BUSNUM_SHIFT,
			target_bus);
	FUNC2(regs->axi.ob_ctrl.cfg_target_bus, reg);
	return 0;
}