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
struct TYPE_6__ {TYPE_2__* int_grp_b; TYPE_1__* parity; } ;
struct al_pcie_regs {TYPE_3__ app; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
typedef  scalar_t__ al_bool ;
struct TYPE_5__ {int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  en_core; } ;

/* Variables and functions */
 scalar_t__ AL_TRUE ; 
 int /*<<< orphan*/  PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(
	struct al_pcie_port *pcie_port,
	al_bool enable)
{
	struct al_pcie_regs *regs = pcie_port->regs;

	FUNC0(&regs->app.parity->en_core,
		(enable == AL_TRUE) ? 0xffffffff : 0x0);

	FUNC1(&regs->app.int_grp_b->mask,
	      PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE,
	      (enable != AL_TRUE) ?
	      PCIE_W_INT_GRP_B_CAUSE_B_PARITY_ERROR_CORE : 0);

}