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
struct al_pcie_regs {TYPE_1__* core_space; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;
typedef  enum al_pcie_operating_mode { ____Placeholder_al_pcie_operating_mode } al_pcie_operating_mode ;
typedef  int al_bool ;
struct TYPE_2__ {scalar_t__ pcie_cap_base; } ;

/* Variables and functions */
 int AL_PCIE_OPERATING_MODE_RC ; 
 int AL_PCI_EXP_LNKCTL ; 
 int AL_PCI_EXP_LNKCTL_LNK_DIS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_pcie_port*) ; 
 int FUNC3 (struct al_pcie_port*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 

int
FUNC6(struct al_pcie_port *pcie_port, al_bool disable)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	uint32_t pcie_lnkctl;
	al_bool link_disable_state;
	enum al_pcie_operating_mode op_mode = FUNC3(pcie_port);

	if (op_mode != AL_PCIE_OPERATING_MODE_RC) {
		FUNC1("PCIe %d: hot-reset is applicable only for RC mode\n", pcie_port->port_id);
		return -EINVAL;
	}

	if (!FUNC2(pcie_port)) {
		FUNC1("PCIe %d: link not started, cannot disable link\n", pcie_port->port_id);
		return -EINVAL;
	}

	pcie_lnkctl = FUNC4(regs->core_space[0].pcie_cap_base + (AL_PCI_EXP_LNKCTL >> 1));
	link_disable_state = pcie_lnkctl & AL_PCI_EXP_LNKCTL_LNK_DIS;

	if (disable && link_disable_state) {
		FUNC1("PCIe %d: link is already in disable state\n", pcie_port->port_id);
		return -EINVAL;
	} else if ((!disable) && (!(link_disable_state))) {
		FUNC1("PCIe %d: link is already in enable state\n", pcie_port->port_id);
		return -EINVAL;
	}

	FUNC0("PCIe %d: %s port\n", pcie_port->port_id, (disable ? "disabling" : "enabling"));
	FUNC5(regs->core_space[0].pcie_cap_base + (AL_PCI_EXP_LNKCTL >> 1),
		AL_PCI_EXP_LNKCTL_LNK_DIS,
		(disable ? AL_PCI_EXP_LNKCTL_LNK_DIS : ~AL_PCI_EXP_LNKCTL_LNK_DIS));
	return 0;
}