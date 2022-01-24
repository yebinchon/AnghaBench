#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct aw_thermal_softc {TYPE_1__* conf; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  calib ;
struct TYPE_2__ {int calib0_mask; int calib1_mask; int adc_acquire_time; int thermal_per; int filter; } ;

/* Variables and functions */
 int ADC_CALI_EN ; 
 int ALARM_INT_ALL ; 
 int ENXIO ; 
 int FUNC0 (struct aw_thermal_softc*,int /*<<< orphan*/ ) ; 
 int SENSOR_ACQ1_SHIFT ; 
 int SENSOR_ENABLE_ALL ; 
 int SHUT_INT_ALL ; 
 int /*<<< orphan*/  THS_CALIB0 ; 
 int /*<<< orphan*/  THS_CALIB1 ; 
 int /*<<< orphan*/  THS_CTRL0 ; 
 int /*<<< orphan*/  THS_CTRL1 ; 
 int /*<<< orphan*/  THS_CTRL2 ; 
 int /*<<< orphan*/  THS_FILTER ; 
 int /*<<< orphan*/  THS_INTC ; 
 int /*<<< orphan*/  THS_INTS ; 
 int THS_THERMAL_PER_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct aw_thermal_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct aw_thermal_softc *sc)
{
	phandle_t node;
	uint32_t calib[2];
	int error;

	node = FUNC5(sc->dev);
	if (FUNC3(node, "ths-calib") > sizeof(calib)) {
		FUNC2(sc->dev, "ths-calib nvmem cell is too large\n");
		return (ENXIO);
	}
	error = FUNC4(node, "ths-calib",
	    (void *)&calib, FUNC3(node, "ths-calib"));
	/* Read calibration settings from EFUSE */
	if (error != 0) {
		FUNC2(sc->dev, "Cannot read THS efuse\n");
		return (error);
	}

	calib[0] &= sc->conf->calib0_mask;
	calib[1] &= sc->conf->calib1_mask;

	/* Write calibration settings to thermal controller */
	if (calib[0] != 0)
		FUNC1(sc, THS_CALIB0, calib[0]);
	if (calib[1] != 0)
		FUNC1(sc, THS_CALIB1, calib[1]);

	/* Configure ADC acquire time (CLK_IN/(N+1)) and enable sensors */
	FUNC1(sc, THS_CTRL1, ADC_CALI_EN);
	FUNC1(sc, THS_CTRL0, sc->conf->adc_acquire_time);
	FUNC1(sc, THS_CTRL2, sc->conf->adc_acquire_time << SENSOR_ACQ1_SHIFT);

	/* Set thermal period */
	FUNC1(sc, THS_INTC, sc->conf->thermal_per << THS_THERMAL_PER_SHIFT);

	/* Enable average filter */
	FUNC1(sc, THS_FILTER, sc->conf->filter);

	/* Enable interrupts */
	FUNC1(sc, THS_INTS, FUNC0(sc, THS_INTS));
	FUNC1(sc, THS_INTC, FUNC0(sc, THS_INTC) | SHUT_INT_ALL | ALARM_INT_ALL);

	/* Enable sensors */
	FUNC1(sc, THS_CTRL2, FUNC0(sc, THS_CTRL2) | SENSOR_ENABLE_ALL);

	return (0);
}