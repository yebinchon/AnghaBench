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
struct ti_adc_softc {int sc_xp_bit; int sc_tsc_wires; int sc_yp_inp; int sc_xn_bit; int sc_yn_bit; int sc_yp_bit; int sc_coord_readouts; int sc_xp_inp; int sc_charge_delay; int sc_yn_inp; int sc_tsc_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_FIFO1THRESHOLD ; 
 int /*<<< orphan*/  ADC_IDLECONFIG ; 
 int FUNC0 (struct ti_adc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ADC_STEPS ; 
 int ADC_STEP_AVG_SHIFT ; 
 int ADC_STEP_FIFO1 ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int ADC_STEP_MODE_HW_ONESHOT ; 
 int /*<<< orphan*/  ADC_TC_CHARGE_DELAY ; 
 int /*<<< orphan*/  ADC_TC_CHARGE_STEPCONFIG ; 
 int /*<<< orphan*/  FUNC5 (struct ti_adc_softc*,int /*<<< orphan*/ ,int) ; 
 int STEPDLY_OPEN ; 
 int /*<<< orphan*/  FUNC6 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_adc_softc*) ; 

__attribute__((used)) static void
FUNC8(struct ti_adc_softc *sc)
{
	int i, start_step, end_step;
	uint32_t stepconfig, val;

	FUNC6(sc);

	/* X coordinates */
	stepconfig = ADC_STEP_FIFO1 | (4 << ADC_STEP_AVG_SHIFT) |
	    ADC_STEP_MODE_HW_ONESHOT | sc->sc_xp_bit;
	if (sc->sc_tsc_wires == 4)
		stepconfig |= FUNC4(sc->sc_yp_inp) | sc->sc_xn_bit;
	else if (sc->sc_tsc_wires == 5)
		stepconfig |= FUNC4(4) |
			sc->sc_xn_bit | sc->sc_yn_bit | sc->sc_yp_bit;
	else if (sc->sc_tsc_wires == 8)
		stepconfig |= FUNC4(sc->sc_yp_inp) | sc->sc_xn_bit;

	start_step = ADC_STEPS - sc->sc_coord_readouts + 1;
	end_step = start_step + sc->sc_coord_readouts - 1;
	for (i = start_step; i <= end_step; i++) {
		FUNC5(sc, FUNC1(i), stepconfig);
		FUNC5(sc, FUNC2(i), STEPDLY_OPEN);
	}

	/* Y coordinates */
	stepconfig = ADC_STEP_FIFO1 | (4 << ADC_STEP_AVG_SHIFT) |
	    ADC_STEP_MODE_HW_ONESHOT | sc->sc_yn_bit |
	    FUNC3(8);
	if (sc->sc_tsc_wires == 4)
		stepconfig |= FUNC4(sc->sc_xp_inp) | sc->sc_yp_bit;
	else if (sc->sc_tsc_wires == 5)
		stepconfig |= FUNC4(4) |
			sc->sc_xp_bit | sc->sc_xn_bit | sc->sc_yp_bit;
	else if (sc->sc_tsc_wires == 8)
		stepconfig |= FUNC4(sc->sc_xp_inp) | sc->sc_yp_bit;

	start_step = ADC_STEPS - (sc->sc_coord_readouts*2 + 2) + 1;
	end_step = start_step + sc->sc_coord_readouts - 1;
	for (i = start_step; i <= end_step; i++) {
		FUNC5(sc, FUNC1(i), stepconfig);
		FUNC5(sc, FUNC2(i), STEPDLY_OPEN);
	}

	/* Charge config */
	val = FUNC0(sc, ADC_IDLECONFIG);
	FUNC5(sc, ADC_TC_CHARGE_STEPCONFIG, val);
	FUNC5(sc, ADC_TC_CHARGE_DELAY, sc->sc_charge_delay);

	/* 2 steps for Z */
	start_step = ADC_STEPS - (sc->sc_coord_readouts + 2) + 1;
	stepconfig = ADC_STEP_FIFO1 | (4 << ADC_STEP_AVG_SHIFT) |
	    ADC_STEP_MODE_HW_ONESHOT | sc->sc_yp_bit |
	    sc->sc_xn_bit | FUNC4(sc->sc_xp_inp) |
	    FUNC3(8);
	FUNC5(sc, FUNC1(start_step), stepconfig);
	FUNC5(sc, FUNC2(start_step), STEPDLY_OPEN);
	start_step++;
	stepconfig |= FUNC4(sc->sc_yn_inp);
	FUNC5(sc, FUNC1(start_step), stepconfig);
	FUNC5(sc, FUNC2(start_step), STEPDLY_OPEN);

	FUNC5(sc, ADC_FIFO1THRESHOLD, (sc->sc_coord_readouts*2 + 2) - 1);

	sc->sc_tsc_enabled = 1;
	start_step = ADC_STEPS - (sc->sc_coord_readouts*2 + 2) + 1;
	end_step = ADC_STEPS;
	for (i = start_step; i <= end_step; i++) {
		sc->sc_tsc_enabled |= (1 << i);
	}


	FUNC7(sc);
}