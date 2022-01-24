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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int* FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 

__attribute__((used)) static int
FUNC4(uint32_t iparent, uint32_t *intr, int *interrupt,
    int *trig, int *pol)
{
	int rv = 0;

	rv = FUNC2(iparent, intr, interrupt, trig, pol);
	if (rv == 0) {
		/* This was recognized as our PIC and decoded. */
		interrupt = FUNC0(iparent, interrupt);

		/* Configure the interrupt if callback provided */
		if (&arm_config_irq)
			FUNC1)(*interrupt, *trig, *pol);
	}
	return (rv);
}