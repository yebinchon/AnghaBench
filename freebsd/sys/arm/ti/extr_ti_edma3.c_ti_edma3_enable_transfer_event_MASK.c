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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TI_EDMA3CC_EMCR ; 
 int /*<<< orphan*/  TI_EDMA3CC_EMCRH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int TI_EDMA3_NUM_DMA_CHS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5(unsigned int ch)
{
	if (ch >= TI_EDMA3_NUM_DMA_CHS)
		return (EINVAL);

	/* Clear SECR(H) & EMCR(H) to clean any previous NULL request
	 * and set corresponding bit in EESR to enable DMA event */
	if(ch < 32) {
		FUNC4(FUNC2(0), (1 << ch));
		FUNC4(TI_EDMA3CC_EMCR, (1 << ch));
		FUNC4(FUNC0(0), (1 << ch));
	} else {
		FUNC4(FUNC3(0), 1 << (ch - 32));
		FUNC4(TI_EDMA3CC_EMCRH, 1 << (ch - 32));
		FUNC4(FUNC1(0), 1 << (ch - 32));
	}

	return 0;
}