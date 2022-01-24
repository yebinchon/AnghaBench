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
 int /*<<< orphan*/  CPU_ID_CPU_MASK ; 
 int /*<<< orphan*/  CPU_ID_MV88SV584X_V7 ; 
 int /*<<< orphan*/  TCLK_200MHZ ; 
 int /*<<< orphan*/  TCLK_250MHZ ; 
 int /*<<< orphan*/  FUNC0 () ; 

uint32_t
FUNC1(void)
{
 	uint32_t cputype;

	cputype = FUNC0();
	cputype &= CPU_ID_CPU_MASK;

	if (cputype == CPU_ID_MV88SV584X_V7)
		return (TCLK_250MHZ);
	else
		return (TCLK_200MHZ);
}