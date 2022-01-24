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
 scalar_t__ EDMA_TPTC0_CLK ; 
 int /*<<< orphan*/  TI_EDMA3CC_CCERRCLR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_EDMA3CC_EMCR ; 
 int /*<<< orphan*/  TI_EDMA3CC_EMCRH ; 
 int /*<<< orphan*/  TI_EDMA3CC_QDMAQNUM ; 
 int FUNC6 (int) ; 
 int FUNC7 (int,unsigned int) ; 
 int /*<<< orphan*/  TI_EDMA3CC_QEMCR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int TI_EDMA3_NUM_DMA_CHS ; 
 int TI_EDMA3_NUM_QDMA_CHS ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

void
FUNC12(unsigned int eqn)
{
	uint32_t reg;
	int i;

	/* on AM335x Event queue 0 is always mapped to Transfer Controller 0,
	 * event queue 1 to TC2, etc. So we are asking PRCM to power on specific
	 * TC based on what event queue we need to initialize */
	FUNC11(EDMA_TPTC0_CLK + eqn);

	/* Clear Event Missed Regs */
	FUNC10(TI_EDMA3CC_EMCR, 0xFFFFFFFF);
	FUNC10(TI_EDMA3CC_EMCRH, 0xFFFFFFFF);
	FUNC10(TI_EDMA3CC_QEMCR, 0xFFFFFFFF);

	/* Clear Error Reg */
	FUNC10(TI_EDMA3CC_CCERRCLR, 0xFFFFFFFF);

	/* Enable DMA channels 0-63 */
	FUNC10(FUNC4(0), 0xFFFFFFFF);
	FUNC10(FUNC5(0), 0xFFFFFFFF);

	for (i = 0; i < 64; i++) {
		FUNC10(FUNC0(i), i<<5);
	}

	/* Initialize the DMA Queue Number Registers */
	for (i = 0; i < TI_EDMA3_NUM_DMA_CHS; i++) {
		reg = FUNC9(FUNC1(i>>3));
		reg &= FUNC2(i);
		reg |= FUNC3(i, eqn);
		FUNC10(FUNC1(i>>3), reg);
	}

	/* Enable the QDMA Region access for all channels */
	FUNC10(FUNC8(0), (1 << TI_EDMA3_NUM_QDMA_CHS) - 1);

	/*Initialize QDMA Queue Number Registers */
	for (i = 0; i < TI_EDMA3_NUM_QDMA_CHS; i++) {
		reg = FUNC9(TI_EDMA3CC_QDMAQNUM);
		reg &= FUNC6(i);
		reg |= FUNC7(i, eqn);
		FUNC10(TI_EDMA3CC_QDMAQNUM, reg);
	}
}