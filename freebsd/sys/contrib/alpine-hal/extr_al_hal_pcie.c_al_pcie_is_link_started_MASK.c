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
struct TYPE_3__ {int /*<<< orphan*/  port_init; } ;
struct TYPE_4__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_port {scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  al_bool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK ; 
 int /*<<< orphan*/  PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

al_bool FUNC2(struct al_pcie_port *pcie_port)
{
	struct al_pcie_regs *regs = (struct al_pcie_regs *)pcie_port->regs;

	uint32_t port_init = FUNC1(regs->app.global_ctrl.port_init);
	uint8_t ltssm_en = FUNC0(port_init,
		PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_MASK,
		PCIE_W_GLOBAL_CTRL_PORT_INIT_APP_LTSSM_EN_SHIFT);

	return ltssm_en;
}