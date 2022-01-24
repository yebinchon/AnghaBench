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
struct oppt {scalar_t__ mhz; int /*<<< orphan*/  mv; } ;
struct imx6_anatop_softc {scalar_t__ cpu_curmhz; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX6_ANALOG_CCM_PLL_ARM ; 
 int IMX6_ANALOG_CCM_PLL_ARM_BYPASS ; 
 int IMX6_ANALOG_CCM_PLL_ARM_CLK_SRC_MASK ; 
 int /*<<< orphan*/  IMX6_ANALOG_CCM_PLL_ARM_CLR ; 
 int IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK ; 
 int IMX6_ANALOG_CCM_PLL_ARM_LOCK ; 
 int /*<<< orphan*/  IMX6_ANALOG_CCM_PLL_ARM_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct imx6_anatop_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct imx6_anatop_softc*,scalar_t__,int*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct imx6_anatop_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC8(struct imx6_anatop_softc * sc, struct oppt *op)
{
	uint32_t corediv, plldiv, timeout, wrk32;

	/* If increasing the frequency, we must first increase the voltage. */
	if (op->mhz > sc->cpu_curmhz) {
		FUNC7(sc, op->mv);
	}

	/*
	 * I can't find a documented procedure for changing the ARM PLL divisor,
	 * but some trial and error came up with this:
	 *  - Set the bypass clock source to REF_CLK_24M (source #0).
	 *  - Set the PLL into bypass mode; cpu should now be running at 24mhz.
	 *  - Change the divisor.
	 *  - Wait for the LOCK bit to come on; it takes ~50 loop iterations.
	 *  - Turn off bypass mode; cpu should now be running at the new speed.
	 */
	FUNC2(sc, op->mhz, &corediv, &plldiv);
	FUNC4(IMX6_ANALOG_CCM_PLL_ARM_CLR, 
	    IMX6_ANALOG_CCM_PLL_ARM_CLK_SRC_MASK);
	FUNC4(IMX6_ANALOG_CCM_PLL_ARM_SET, 
	    IMX6_ANALOG_CCM_PLL_ARM_BYPASS);

	wrk32 = FUNC3(IMX6_ANALOG_CCM_PLL_ARM);
	wrk32 &= ~IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK;
	wrk32 |= plldiv;
	FUNC4(IMX6_ANALOG_CCM_PLL_ARM, wrk32);

	timeout = 10000;
	while ((FUNC3(IMX6_ANALOG_CCM_PLL_ARM) &
	    IMX6_ANALOG_CCM_PLL_ARM_LOCK) == 0)
		if (--timeout == 0)
			FUNC6("imx6_set_cpu_clock(): PLL never locked");

	FUNC4(IMX6_ANALOG_CCM_PLL_ARM_CLR, 
	    IMX6_ANALOG_CCM_PLL_ARM_BYPASS);
	FUNC5(corediv);

	/* If lowering the frequency, it is now safe to lower the voltage. */
	if (op->mhz < sc->cpu_curmhz)
		FUNC7(sc, op->mv);
	sc->cpu_curmhz = op->mhz;

	/* Tell the mpcore timer that its frequency has changed. */
	FUNC0(
	    FUNC1(sc, sc->cpu_curmhz) * 1000000 / 2);
}