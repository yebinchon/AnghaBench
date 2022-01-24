#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/ * events_gen; } ;
struct TYPE_5__ {TYPE_1__ global_ctrl; } ;
struct al_pcie_regs {TYPE_2__ app; } ;
struct al_pcie_pf {unsigned int pf_num; TYPE_3__* pcie_port; } ;
struct TYPE_6__ {struct al_pcie_regs* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_W_GLOBAL_CTRL_EVENTS_GEN_MSI_VECTOR_MASK ; 
 int /*<<< orphan*/  PCIE_W_GLOBAL_CTRL_EVENTS_GEN_MSI_VECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct al_pcie_pf *pcie_pf, uint8_t vector)
{
	struct al_pcie_regs *regs = pcie_pf->pcie_port->regs;
	unsigned int pf_num = pcie_pf->pf_num;
	uint32_t reg;

	/* set msi vector and clear MSI request */
	reg = FUNC3(regs->app.global_ctrl.events_gen[pf_num]);
	FUNC0(reg, 4);
	FUNC2(reg,
			PCIE_W_GLOBAL_CTRL_EVENTS_GEN_MSI_VECTOR_MASK,
			PCIE_W_GLOBAL_CTRL_EVENTS_GEN_MSI_VECTOR_SHIFT,
			vector);
	FUNC4(regs->app.global_ctrl.events_gen[pf_num], reg);
	/* set MSI request */
	FUNC1(reg, 4);
	FUNC4(regs->app.global_ctrl.events_gen[pf_num], reg);

	return 0;
}