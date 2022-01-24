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
struct callout {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct callout*) ; 
 int /*<<< orphan*/  FUNC2 (struct callout*) ; 
 int /*<<< orphan*/  FUNC3 (struct callout*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int pin)
{
	struct callout *c;
	struct mv_gpio_softc *sc;

	sc = (struct mv_gpio_softc *)FUNC4(dev);

	FUNC0();

	c = sc->debounce_callouts[pin];
	if (c == NULL)
		return (ENXIO);

	if (FUNC1(c))
		FUNC2(c);

	FUNC3(c);

	return (0);
}