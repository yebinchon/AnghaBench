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
typedef  int uint8_t ;
struct mv_gpio_softc {int* debounce_counters; int /*<<< orphan*/ * debounce_callouts; TYPE_1__* gpio_setup; } ;
struct mv_gpio_pindev {int pin; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_flags; } ;

/* Variables and functions */
 int DEBOUNCE_CHECK_MS ; 
 int /*<<< orphan*/  DEBOUNCE_CHECK_TICKS ; 
 int DEBOUNCE_HI_LO_MS ; 
 int DEBOUNCE_LO_HI_MS ; 
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ; 
 int MV_GPIO_IN_POL_LOW ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (void*),void*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC11(void *arg)
{
	uint8_t raw_read, last_state;
	int pin;
	device_t dev;
	int *debounce_counter;
	struct mv_gpio_softc *sc;
	struct mv_gpio_pindev *s;

	s = (struct mv_gpio_pindev *)arg;
	dev = s->dev;
	pin = s->pin;
	sc = (struct mv_gpio_softc *)FUNC4(dev);

	FUNC0();

	raw_read = (FUNC10(dev, pin, 1) ? 1 : 0);
	last_state = (FUNC6(dev, pin) ? 1 : 0);
	debounce_counter = &sc->debounce_counters[pin];

	if (raw_read == last_state) {
		if (last_state)
			*debounce_counter = DEBOUNCE_HI_LO_MS /
			    DEBOUNCE_CHECK_MS;
		else
			*debounce_counter = DEBOUNCE_LO_HI_MS /
			    DEBOUNCE_CHECK_MS;

		FUNC3(sc->debounce_callouts[pin],
		    DEBOUNCE_CHECK_TICKS, mv_gpio_debounce, arg);
	} else {
		*debounce_counter = *debounce_counter - 1;
		if (*debounce_counter != 0)
			FUNC3(sc->debounce_callouts[pin],
			    DEBOUNCE_CHECK_TICKS, mv_gpio_debounce, arg);
		else {
			FUNC7(dev, pin, raw_read);

			if (last_state)
				*debounce_counter = DEBOUNCE_HI_LO_MS /
				    DEBOUNCE_CHECK_MS;
			else
				*debounce_counter = DEBOUNCE_LO_HI_MS /
				    DEBOUNCE_CHECK_MS;

			if (((sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW) &&
			    (raw_read == 0)) ||
			    (((sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW) == 0) &&
			    raw_read) ||
			    (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE))
				FUNC8(dev, pin);

			/* Toggle polarity for next edge. */
			FUNC9(dev, pin, 0, 1);

			FUNC5(arg, M_DEVBUF);
			FUNC2(sc->debounce_callouts[pin]);
		}
	}

	FUNC1();
}