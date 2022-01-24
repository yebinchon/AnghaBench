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
struct TYPE_3__ {int /*<<< orphan*/ * events_gen; } ;
struct TYPE_4__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {int /*<<< orphan*/  port_id; struct al_pcie_regs* regs; } ;
typedef  enum al_pcie_operating_mode { ____Placeholder_al_pcie_operating_mode } al_pcie_operating_mode ;
typedef  int al_bool ;

/* Variables and functions */
 int AL_PCIE_OPERATING_MODE_RC ; 
 int EINVAL ; 
 int PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_pcie_port*) ; 
 int FUNC3 (struct al_pcie_port*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

int
FUNC6(struct al_pcie_port *pcie_port, al_bool enable)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	uint32_t events_gen;
	al_bool app_reset_state;
	enum al_pcie_operating_mode op_mode = FUNC3(pcie_port);

	if (op_mode != AL_PCIE_OPERATING_MODE_RC) {
		FUNC1("PCIe %d: hot-reset is applicable only for RC mode\n", pcie_port->port_id);
		return -EINVAL;
	}

	if (!FUNC2(pcie_port)) {
		FUNC1("PCIe %d: link not started, cannot trigger hot-reset\n", pcie_port->port_id);
		return -EINVAL;
	}

	events_gen = FUNC4(regs->app.global_ctrl.events_gen[0]);
	app_reset_state = events_gen & PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT;

	if (enable && app_reset_state) {
		FUNC1("PCIe %d: link is already in hot-reset state\n", pcie_port->port_id);
		return -EINVAL;
	} else if ((!enable) && (!(app_reset_state))) {
		FUNC1("PCIe %d: link is already in non-hot-reset state\n", pcie_port->port_id);
		return -EINVAL;
	} else {
		FUNC0("PCIe %d: %s hot-reset\n", pcie_port->port_id,
			(enable ? "enabling" : "disabling"));
		/* hot-reset functionality is implemented only for function 0 */
		FUNC5(regs->app.global_ctrl.events_gen[0],
			PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT,
			(enable ? PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT
				: ~PCIE_W_GLOBAL_CTRL_EVENTS_GEN_APP_RST_INIT));
		return 0;
	}
}