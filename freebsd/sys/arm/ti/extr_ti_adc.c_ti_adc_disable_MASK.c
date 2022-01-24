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
struct ti_adc_softc {scalar_t__ sc_last_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_CTRL ; 
 int ADC_CTRL_ENABLE ; 
 int /*<<< orphan*/  ADC_FIFO0COUNT ; 
 int /*<<< orphan*/  ADC_FIFO0DATA ; 
 int /*<<< orphan*/  ADC_FIFO1COUNT ; 
 int /*<<< orphan*/  ADC_FIFO1DATA ; 
 int ADC_FIFO_COUNT_MSK ; 
 int /*<<< orphan*/  ADC_IRQENABLE_CLR ; 
 int /*<<< orphan*/  ADC_IRQSTATUS ; 
 int ADC_IRQ_END_OF_SEQ ; 
 int ADC_IRQ_FIFO0_THRES ; 
 int ADC_IRQ_FIFO1_THRES ; 
 int FUNC0 (struct ti_adc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ADC_STEPENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct ti_adc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_adc_softc*) ; 

__attribute__((used)) static void
FUNC3(struct ti_adc_softc *sc)
{
	int count;
	uint32_t data;

	FUNC2(sc);

	if (sc->sc_last_state == 0)
		return;

	/* Disable all the enabled steps. */
	FUNC1(sc, ADC_STEPENABLE, 0);

	/* Disable the ADC. */
	FUNC1(sc, ADC_CTRL, FUNC0(sc, ADC_CTRL) & ~ADC_CTRL_ENABLE);

	/* Disable the FIFO0 threshold and the end of sequence interrupt. */
	FUNC1(sc, ADC_IRQENABLE_CLR,
	    ADC_IRQ_FIFO0_THRES | ADC_IRQ_FIFO1_THRES | ADC_IRQ_END_OF_SEQ);

	/* ACK any pending interrupt. */
	FUNC1(sc, ADC_IRQSTATUS, FUNC0(sc, ADC_IRQSTATUS));

	/* Drain the FIFO data. */
	count = FUNC0(sc, ADC_FIFO0COUNT) & ADC_FIFO_COUNT_MSK;
	while (count > 0) {
		data = FUNC0(sc, ADC_FIFO0DATA);
		count = FUNC0(sc, ADC_FIFO0COUNT) & ADC_FIFO_COUNT_MSK;
	}

	count = FUNC0(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
	while (count > 0) {
		data = FUNC0(sc, ADC_FIFO1DATA);
		count = FUNC0(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
	}

	sc->sc_last_state = 0;
}