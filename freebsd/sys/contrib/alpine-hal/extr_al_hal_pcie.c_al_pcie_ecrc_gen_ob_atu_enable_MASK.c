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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_pcie_regs {TYPE_2__* port_regs; } ;
struct al_pcie_port {scalar_t__ rev_id; struct al_pcie_regs* regs; } ;
typedef  scalar_t__ al_bool ;
struct TYPE_3__ {int /*<<< orphan*/  cr1; int /*<<< orphan*/  cr2; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {TYPE_1__ iatu; } ;

/* Variables and functions */
 scalar_t__ AL_FALSE ; 
 int /*<<< orphan*/  AL_PCIE_ATU_DIR_OUTBOUND ; 
 int AL_PCIE_REV_1_2_ATU_NUM_OUTBOUND_REGIONS ; 
 int AL_PCIE_REV_3_ATU_NUM_OUTBOUND_REGIONS ; 
 scalar_t__ AL_PCIE_REV_ID_3 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ AL_TRUE ; 
 int /*<<< orphan*/  PCIE_IATU_CR1_FUNC_NUM_MASK ; 
 int /*<<< orphan*/  PCIE_IATU_CR1_FUNC_NUM_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct al_pcie_port *pcie_port, unsigned int pf_num)
{
	struct al_pcie_regs *regs = pcie_port->regs;
	int max_ob_atu = (pcie_port->rev_id == AL_PCIE_REV_ID_3) ?
		AL_PCIE_REV_3_ATU_NUM_OUTBOUND_REGIONS : AL_PCIE_REV_1_2_ATU_NUM_OUTBOUND_REGIONS;
	int i;
	for (i = 0; i < max_ob_atu; i++) {
		al_bool enable = 0;
		uint32_t reg = 0;
		unsigned int func_num;
		FUNC4(reg, 0xF, 0, i);
		FUNC2(reg, 31, AL_PCIE_ATU_DIR_OUTBOUND);
		FUNC6(&regs->port_regs->iatu.index, reg);
		reg = FUNC5(&regs->port_regs->iatu.cr2);
		enable = FUNC0(reg, 31) ? AL_TRUE : AL_FALSE;
		reg = FUNC5(&regs->port_regs->iatu.cr1);
		func_num = FUNC3(reg,
				PCIE_IATU_CR1_FUNC_NUM_MASK,
				PCIE_IATU_CR1_FUNC_NUM_SHIFT);
		if ((enable == AL_TRUE) && (pf_num == func_num)) {
			/* Set TD bit */
			FUNC1(reg, 8);
			FUNC6(&regs->port_regs->iatu.cr1, reg);
		}
	}
}