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
struct ti_adc_softc {int sc_pen_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_IRQENABLE_CLR ; 
 int /*<<< orphan*/  ADC_IRQSTATUS ; 
 int /*<<< orphan*/  ADC_IRQSTATUS_RAW ; 
 int ADC_IRQ_END_OF_SEQ ; 
 int ADC_IRQ_FIFO0_THRES ; 
 int ADC_IRQ_FIFO1_THRES ; 
 int ADC_IRQ_HW_PEN_ASYNC ; 
 int ADC_IRQ_PEN_UP ; 
 int FUNC0 (struct ti_adc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_adc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_adc_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ti_adc_softc*,int) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	struct ti_adc_softc *sc;
	uint32_t status, rawstatus;

	sc = (struct ti_adc_softc *)arg;

	FUNC2(sc);

	rawstatus = FUNC0(sc, ADC_IRQSTATUS_RAW);
	status = FUNC0(sc, ADC_IRQSTATUS);

	if (rawstatus & ADC_IRQ_HW_PEN_ASYNC) {
		sc->sc_pen_down = 1;
		status |= ADC_IRQ_HW_PEN_ASYNC;
		FUNC1(sc, ADC_IRQENABLE_CLR,
			ADC_IRQ_HW_PEN_ASYNC);
#ifdef EVDEV_SUPPORT
		ti_adc_ev_report(sc);
#endif
	}

	if (rawstatus & ADC_IRQ_PEN_UP) {
		sc->sc_pen_down = 0;
		status |= ADC_IRQ_PEN_UP;
#ifdef EVDEV_SUPPORT
		ti_adc_ev_report(sc);
#endif
	}

	if (status & ADC_IRQ_FIFO0_THRES)
		FUNC5(sc, status);

	if (status & ADC_IRQ_FIFO1_THRES)
		FUNC7(sc, status);

	if (status) {
		/* ACK the interrupt. */
		FUNC1(sc, ADC_IRQSTATUS, status);
	}

	/* Start the next conversion ? */
	if (status & ADC_IRQ_END_OF_SEQ)
		FUNC6(sc);

	FUNC3(sc);
}