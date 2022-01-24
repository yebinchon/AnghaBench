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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct aw_pwm_softc {int clk_freq; int enabled; int period; int duty; int /*<<< orphan*/  busdev; int /*<<< orphan*/  res; int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AW_PWM_CTRL ; 
 int AW_PWM_CTRL_EN ; 
 int AW_PWM_CTRL_GATE ; 
 int AW_PWM_CTRL_PRESCALE_MASK ; 
 int /*<<< orphan*/  AW_PWM_PERIOD ; 
 int AW_PWM_PERIOD_ACTIVE_MASK ; 
 int AW_PWM_PERIOD_ACTIVE_SHIFT ; 
 int AW_PWM_PERIOD_TOTAL_MASK ; 
 int AW_PWM_PERIOD_TOTAL_SHIFT ; 
 int FUNC0 (struct aw_pwm_softc*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int NS_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* aw_pwm_clk_prescaler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aw_pwm_spec ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 struct aw_pwm_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct aw_pwm_softc *sc;
	uint64_t clk_freq;
	uint32_t reg;
	phandle_t node;
	int error;

	sc = FUNC10(dev);
	sc->dev = dev;

	error = FUNC7(dev, 0, 0, &sc->clk);
	if (error != 0) {
		FUNC11(dev, "cannot get clock\n");
		goto fail;
	}
	error = FUNC6(sc->clk);
	if (error != 0) {
		FUNC11(dev, "cannot enable clock\n");
		goto fail;
	}

	error = FUNC8(sc->clk, &sc->clk_freq);
	if (error != 0) {
		FUNC11(dev, "cannot get clock frequency\n");
		goto fail;
	}

	if (FUNC4(dev, aw_pwm_spec, &sc->res) != 0) {
		FUNC11(dev, "cannot allocate resources for device\n");
		error = ENXIO;
		goto fail;
	}

	/* Read the configuration left by U-Boot */
	reg = FUNC0(sc, AW_PWM_CTRL);
	if (reg & (AW_PWM_CTRL_GATE | AW_PWM_CTRL_EN))
		sc->enabled = true;

	reg = FUNC0(sc, AW_PWM_CTRL);
	reg &= AW_PWM_CTRL_PRESCALE_MASK;
	if (reg > FUNC12(aw_pwm_clk_prescaler)) {
		FUNC11(dev, "Bad prescaler %x, cannot guess current settings\n", reg);
		goto skipcfg;
	}
	clk_freq = sc->clk_freq / aw_pwm_clk_prescaler[reg];

	reg = FUNC0(sc, AW_PWM_PERIOD);
	sc->period = NS_PER_SEC /
		(clk_freq / ((reg >> AW_PWM_PERIOD_TOTAL_SHIFT) & AW_PWM_PERIOD_TOTAL_MASK));
	sc->duty = NS_PER_SEC /
		(clk_freq / ((reg >> AW_PWM_PERIOD_ACTIVE_SHIFT) & AW_PWM_PERIOD_ACTIVE_MASK));

skipcfg:
	/*
	 * Note that we don't check for failure to attach pwmbus -- even without
	 * it we can still service clients who connect via fdt xref data.
	 */
	node = FUNC13(dev);
	FUNC1(FUNC2(node), dev);

	sc->busdev = FUNC9(dev, "pwmbus", -1);

	return (FUNC5(dev));

fail:
	FUNC3(dev);
	return (error);
}