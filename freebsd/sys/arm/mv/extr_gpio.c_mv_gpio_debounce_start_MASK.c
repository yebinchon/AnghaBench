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
struct mv_gpio_softc {struct callout** debounce_callouts; } ;
struct mv_gpio_pindev {int member_1; int pin; int /*<<< orphan*/  dev; int /*<<< orphan*/  member_0; } ;
struct callout {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBOUNCE_CHECK_TICKS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC1 (struct callout*) ; 
 scalar_t__ FUNC2 (struct callout*) ; 
 int /*<<< orphan*/  FUNC3 (struct callout*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mv_gpio_pindev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_gpio_debounce ; 
 int /*<<< orphan*/  FUNC6 (struct mv_gpio_pindev*) ; 

__attribute__((used)) static void
FUNC7(device_t dev, int pin)
{
	struct callout *c;
	struct mv_gpio_pindev s = {dev, pin};
	struct mv_gpio_pindev *sd;
	struct mv_gpio_softc *sc;
	sc = (struct mv_gpio_softc *)FUNC4(dev);

	FUNC0();

	c = sc->debounce_callouts[pin];
	if (c == NULL) {
		FUNC6(&s);
		return;
	}

	if (FUNC2(c) || FUNC1(c)) {
		FUNC6(&s);
		return;
	}

	sd = (struct mv_gpio_pindev *)FUNC5(sizeof(struct mv_gpio_pindev),
	    M_DEVBUF, M_WAITOK);
	if (sd == NULL) {
		FUNC6(&s);
		return;
	}
	sd->pin = pin;
	sd->dev = dev;

	FUNC3(c, DEBOUNCE_CHECK_TICKS, mv_gpio_debounce, sd);
}