#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct dtsec_mii_reg {int /*<<< orphan*/  miimcom; int /*<<< orphan*/  miimstat; int /*<<< orphan*/  miimind; int /*<<< orphan*/  miimadd; int /*<<< orphan*/  miimcfg; } ;

/* Variables and functions */
 int ENXIO ; 
 int MIIMADD_PHY_ADDR_SHIFT ; 
 int MIIMCOM_READ_CYCLE ; 
 int MIIMIND_BUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct dtsec_mii_reg *regs, uint8_t  addr,
		uint8_t reg, uint16_t *data, uint16_t dtsec_freq)
{
	uint32_t	tmp;

	/* Setup the MII Mgmt clock speed */
	FUNC2((uint32_t)FUNC0(dtsec_freq), &regs->miimcfg);
	FUNC3();

	/* Setting up the MII Management Address Register */
	tmp = (uint32_t)((addr << MIIMADD_PHY_ADDR_SHIFT) | reg);
	FUNC2(tmp, &regs->miimadd);
	FUNC3();

	/* Perform an MII management read cycle */
	FUNC2(MIIMCOM_READ_CYCLE, &regs->miimcom);
	/* Dummy read to make sure MIIMCOM is written */
	tmp = FUNC1(&regs->miimcom);
	FUNC3();

	/* Wait until MII management read is complete */
	/* todo: a timeout could be useful here */
	while ((FUNC1(&regs->miimind)) & MIIMIND_BUSY)
		/* busy wait */;

	/* Read MII management status  */
	*data = (uint16_t)FUNC1(&regs->miimstat);
	FUNC3();

	FUNC2(0, &regs->miimcom);
	/* Dummy read to make sure MIIMCOM is written */
	tmp = FUNC1(&regs->miimcom);

	if (*data == 0xffff)
		return -ENXIO;

	return 0;
}