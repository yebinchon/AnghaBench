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
 unsigned int TI_EDMA3_NUM_QDMA_CHS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

int
FUNC2(unsigned int ch)
{
	if (ch >= TI_EDMA3_NUM_QDMA_CHS)
		return (EINVAL);

	/* set corresponding bit in QEESR to enable QDMA event */
	FUNC1(FUNC0(0), (1 << ch));

	return 0;
}