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
struct al_pcie_regs {TYPE_1__* core_space; } ;
struct al_pcie_port {struct al_pcie_regs* regs; } ;
struct al_pcie_pf {unsigned int pf_num; struct al_pcie_port* pcie_port; } ;
typedef  scalar_t__ al_bool ;
struct TYPE_2__ {int /*<<< orphan*/ * config_header; } ;

/* Variables and functions */
 scalar_t__ AL_FALSE ; 
 scalar_t__ AL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct al_pcie_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct al_pcie_port*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(
	struct al_pcie_pf	*pcie_pf,
	unsigned int		reg_offset,
	uint32_t		data,
	al_bool			cs2,
	al_bool			allow_ro_wr)
{
	struct al_pcie_port *pcie_port = pcie_pf->pcie_port;
	struct al_pcie_regs *regs = pcie_port->regs;
	unsigned int pf_num = pcie_pf->pf_num;
	uint32_t *offset = &regs->core_space[pf_num].config_header[reg_offset];

	if (allow_ro_wr)
		FUNC0(pcie_port, AL_TRUE);

	if (cs2 == AL_FALSE)
		FUNC1(offset, data);
	else
		FUNC2(pcie_port, offset, data);

	if (allow_ro_wr)
		FUNC0(pcie_port, AL_FALSE);
}