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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_pcie_regs {TYPE_1__* port_regs; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;
struct al_pcie_gen2_params {scalar_t__ set_deemphasis; scalar_t__ tx_compliance_receive_enable; scalar_t__ tx_swing_low; } ;
struct TYPE_2__ {int /*<<< orphan*/  gen2_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT ; 
 int /*<<< orphan*/  PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT ; 
 int /*<<< orphan*/  PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct al_pcie_port *pcie_port,
				const struct al_pcie_gen2_params *gen2_params)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	uint32_t gen2_ctrl;

	FUNC2("PCIe %d: Gen2 params config: Tx Swing %s, interrupt on link Eq %s, set Deemphasis %s\n",
	       pcie_port->port_id,
	       gen2_params->tx_swing_low ? "Low" : "Full",
	       gen2_params->tx_compliance_receive_enable? "enable" : "disable",
	       gen2_params->set_deemphasis? "enable" : "disable");

	gen2_ctrl = FUNC3(&regs->port_regs->gen2_ctrl);

	if (gen2_params->tx_swing_low)
		FUNC1(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT);
	else
		FUNC0(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_SWING_LOW_SHIFT);

	if (gen2_params->tx_compliance_receive_enable)
		FUNC1(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT);
	else
		FUNC0(gen2_ctrl, PCIE_PORT_GEN2_CTRL_TX_COMPLIANCE_RCV_SHIFT);

	if (gen2_params->set_deemphasis)
		FUNC1(gen2_ctrl, PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT);
	else
		FUNC0(gen2_ctrl, PCIE_PORT_GEN2_CTRL_DEEMPHASIS_SET_SHIFT);

	FUNC4(&regs->port_regs->gen2_ctrl, gen2_ctrl);

	return 0;
}