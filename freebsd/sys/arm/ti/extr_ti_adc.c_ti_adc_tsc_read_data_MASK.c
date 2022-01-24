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
struct ti_adc_softc {int sc_coord_readouts; int sc_x; int sc_y; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_FIFO1COUNT ; 
 int /*<<< orphan*/  ADC_FIFO1DATA ; 
 int ADC_FIFO_COUNT_MSK ; 
 int ADC_FIFO_DATA_MSK ; 
 int FUNC0 (struct ti_adc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_adc_softc*) ; 
 int /*<<< orphan*/  cmp_values ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_adc_softc*) ; 

__attribute__((used)) static void
FUNC5(struct ti_adc_softc *sc)
{
	int count;
	uint32_t data[16];
	uint32_t x, y;
	int i, start, end;

	FUNC1(sc);

	/* Read the available data. */
	count = FUNC0(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
	if (count == 0)
		return;

	i = 0;
	while (count > 0) {
		data[i++] = FUNC0(sc, ADC_FIFO1DATA) & ADC_FIFO_DATA_MSK;
		count = FUNC0(sc, ADC_FIFO1COUNT) & ADC_FIFO_COUNT_MSK;
	}

	if (sc->sc_coord_readouts > 3) {
		start = 1;
		end = sc->sc_coord_readouts - 1;
		FUNC3(data, sc->sc_coord_readouts,
			sizeof(data[0]), &cmp_values);
		FUNC3(&data[sc->sc_coord_readouts + 2],
			sc->sc_coord_readouts,
			sizeof(data[0]), &cmp_values);
	}
	else {
		start = 0;
		end = sc->sc_coord_readouts;
	}

	x = y = 0;
	for (i = start; i < end; i++)
		y += data[i];
	y /= (end - start);

	for (i = sc->sc_coord_readouts + 2 + start; i < sc->sc_coord_readouts + 2 + end; i++)
		x += data[i];
	x /= (end - start);

#ifdef DEBUG_TSC
	device_printf(sc->sc_dev, "touchscreen x: %d, y: %d\n", x, y);
#endif

#ifdef EVDEV_SUPPORT
	if ((sc->sc_x != x) || (sc->sc_y != y)) {
		sc->sc_x = x;
		sc->sc_y = y;
		ti_adc_ev_report(sc);
	}
#endif
}