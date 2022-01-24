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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * events_gen; } ;
struct TYPE_6__ {TYPE_2__ global_ctrl; } ;
struct al_pcie_regs {TYPE_3__ app; } ;
struct al_pcie_pf {unsigned int pf_num; TYPE_1__* pcie_port; } ;
typedef  enum al_pcie_legacy_int_type { ____Placeholder_al_pcie_legacy_int_type } al_pcie_legacy_int_type ;
typedef  int /*<<< orphan*/  al_bool ;
struct TYPE_4__ {struct al_pcie_regs* regs; } ;

/* Variables and functions */
 int AL_PCIE_LEGACY_INTA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(
	struct al_pcie_pf		*pcie_pf,
	al_bool				assert,
	enum al_pcie_legacy_int_type	type)
{
	struct al_pcie_regs *regs = pcie_pf->pcie_port->regs;
	unsigned int pf_num = pcie_pf->pf_num;
	uint32_t reg;

	FUNC1(type == AL_PCIE_LEGACY_INTA); /* only INTA supported */
	reg = FUNC2(regs->app.global_ctrl.events_gen[pf_num]);
	FUNC0(reg, 3, !!assert);
	FUNC3(regs->app.global_ctrl.events_gen[pf_num], reg);

	return 0;
}