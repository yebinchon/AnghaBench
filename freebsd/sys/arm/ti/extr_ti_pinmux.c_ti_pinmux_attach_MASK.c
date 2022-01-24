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
struct ti_pinmux_softc {int /*<<< orphan*/ * sc_res; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ti_pinmux_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ti_pinmux_res_spec ; 
 struct ti_pinmux_softc* ti_pinmux_sc ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct ti_pinmux_softc *sc = FUNC1(dev);

#if 0
	if (ti_pinmux_sc)
		return (ENXIO);
#endif

	sc->sc_dev = dev;

	if (FUNC0(dev, ti_pinmux_res_spec, sc->sc_res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	sc->sc_bst = FUNC6(sc->sc_res[0]);
	sc->sc_bsh = FUNC5(sc->sc_res[0]);

	if (ti_pinmux_sc == NULL)
		ti_pinmux_sc = sc;

	FUNC4(dev, "pinctrl-single,pins");
	FUNC3(dev);

	return (0);
}