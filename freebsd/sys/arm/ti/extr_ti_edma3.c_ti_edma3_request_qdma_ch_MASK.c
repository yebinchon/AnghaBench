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
typedef  int uint32_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int TI_EDMA3CC_OPT_TCC_CLR ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  TI_EDMA3CC_QDMAQNUM ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int TI_EDMA3_NUM_DMA_CHS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6(unsigned int ch, unsigned int tccn, unsigned int eqn)
{
	uint32_t reg;

	if (ch >= TI_EDMA3_NUM_DMA_CHS)
		return (EINVAL);

	/* Enable the QDMA channel in the QRAE registers */
	reg = FUNC4(FUNC3(0));
	reg |= (0x01 << ch);
	FUNC5(FUNC3(0), reg);

	/* Associate QDMA Channel to Event Queue */
	reg = FUNC4(TI_EDMA3CC_QDMAQNUM);
	reg |= FUNC2(ch, eqn);
	FUNC5(TI_EDMA3CC_QDMAQNUM, reg);

	/* Set TCC in corresponding PaRAM Entry */
	reg = FUNC4(FUNC0(ch));
	reg &= TI_EDMA3CC_OPT_TCC_CLR;
	reg |= FUNC1(ch);
	FUNC5(FUNC0(ch), reg);

	return 0;
}