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
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int TI_EDMA3CC_OPT_TCC_CLR ; 
 int FUNC6 (unsigned int) ; 
 unsigned int TI_EDMA3_NUM_DMA_CHS ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

int
FUNC9(unsigned int ch, unsigned int tccn, unsigned int eqn)
{
	uint32_t reg;

	if (ch >= TI_EDMA3_NUM_DMA_CHS)
		return (EINVAL);

	/* Enable the DMA channel in the DRAE/DRAEH registers */
	if (ch < 32) {
		reg = FUNC7(FUNC3(0));
		reg |= (0x01 << ch);
		FUNC8(FUNC3(0), reg);
	} else {
		reg = FUNC7(FUNC4(0));
		reg |= (0x01 << (ch - 32));
		FUNC8(FUNC4(0), reg);
	}

	/* Associate DMA Channel to Event Queue */
	reg = FUNC7(FUNC0(ch >> 3));
	reg &= FUNC1(ch);
	reg |= FUNC2((ch), eqn);
	FUNC8(FUNC0(ch >> 3), reg);

	/* Set TCC in corresponding PaRAM Entry */
	reg = FUNC7(FUNC5(ch));
	reg &= TI_EDMA3CC_OPT_TCC_CLR;
	reg |= FUNC6(ch);
	FUNC8(FUNC5(ch), reg);

	return 0;
}