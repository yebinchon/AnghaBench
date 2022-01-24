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
struct bcm_gpio_softc {int* sc_ro_pins; int sc_ro_npins; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(struct bcm_gpio_softc *sc, phandle_t node,
	const char *propname, const char *label)
{
	int i, need_comma, npins, range_start, range_stop;
	pcell_t *pins;

	/* Get the property data. */
	npins = FUNC0(node, propname, sizeof(*pins),
	    (void **)&pins);
	if (npins < 0)
		return (-1);
	if (npins == 0) {
		FUNC1(pins);
		return (0);
	}
	for (i = 0; i < npins; i++)
		sc->sc_ro_pins[i + sc->sc_ro_npins] = pins[i];
	sc->sc_ro_npins += npins;
	need_comma = 0;
	FUNC2(sc->sc_dev, "%s pins: ", label);
	range_start = range_stop = pins[0];
	for (i = 1; i < npins; i++) {
		if (pins[i] != range_stop + 1) {
			if (need_comma)
				FUNC3(",");
			if (range_start != range_stop)
				FUNC3("%d-%d", range_start, range_stop);
			else
				FUNC3("%d", range_start);
			range_start = range_stop = pins[i];
			need_comma = 1;
		} else
			range_stop++;
	}
	if (need_comma)
		FUNC3(",");
	if (range_start != range_stop)
		FUNC3("%d-%d.\n", range_start, range_stop);
	else
		FUNC3("%d.\n", range_start);
	FUNC1(pins);

	return (0);
}