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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int TI_EDMA3_NUM_DMA_CHS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int
FUNC3(unsigned int ch)
{
	if (ch >= TI_EDMA3_NUM_DMA_CHS)
		return (EINVAL);

	/* set corresponding bit in ESR/ESRH to set a event */
	if (ch < 32) {
		FUNC2(FUNC0(0), 1 <<  ch);
	} else {
		FUNC2(FUNC1(0), 1 <<  (ch - 32));
	}

	return 0;
}