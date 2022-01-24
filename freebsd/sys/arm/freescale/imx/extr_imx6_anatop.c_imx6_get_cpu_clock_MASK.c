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
 int /*<<< orphan*/  IMX6_ANALOG_CCM_PLL_ARM ; 
 int IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  imx6_anatop_sc ; 
 int FUNC2 () ; 

uint32_t 
FUNC3(void)
{
	uint32_t corediv, plldiv;

	corediv = FUNC2();
	plldiv = FUNC1(IMX6_ANALOG_CCM_PLL_ARM) &
	    IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK;
	return (FUNC0(imx6_anatop_sc, corediv, plldiv));
}