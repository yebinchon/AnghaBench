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
typedef  int uint8_t ;
struct mv_gpio_softc {int* debounce_counters; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DEBOUNCE_CHECK_MS ; 
 int DEBOUNCE_HI_LO_MS ; 
 int DEBOUNCE_LO_HI_MS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int pin)
{
	uint8_t raw_read;
	int *cnt;
	struct mv_gpio_softc *sc;

	sc = (struct mv_gpio_softc *)FUNC1(dev);

	FUNC0();

	cnt = &sc->debounce_counters[pin];
	raw_read = (FUNC4(dev, pin, 1) ? 1 : 0);
	if (raw_read) {
		FUNC3(dev, pin, 1, 0);
		*cnt = DEBOUNCE_HI_LO_MS / DEBOUNCE_CHECK_MS;
	} else {
		FUNC3(dev, pin, 0, 0);
		*cnt = DEBOUNCE_LO_HI_MS / DEBOUNCE_CHECK_MS;
	}

	FUNC2(dev, pin, raw_read);

	return (0);
}