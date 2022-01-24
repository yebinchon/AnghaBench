#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct uart_class {int dummy; } ;
struct TYPE_3__ {struct uart_class* sc_class; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct tegra_softc {int /*<<< orphan*/  clk; int /*<<< orphan*/  reset; TYPE_2__ ns8250_base; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  compat_data ; 
 struct tegra_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ofw_compat_data* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct tegra_softc *sc;
	phandle_t node;
	uint64_t freq;
	int shift;
	int rv;
	const struct ofw_compat_data *cd;

	sc = FUNC3(dev);
	if (!FUNC9(dev))
		return (ENXIO);
	cd = FUNC8(dev, compat_data);
	if (cd->ocd_data == 0)
		return (ENXIO);
	sc->ns8250_base.base.sc_class = (struct uart_class *)cd->ocd_data;

	rv = FUNC6(dev, 0, "serial", &sc->reset);
	if (rv != 0) {
		FUNC4(dev, "Cannot get 'serial' reset\n");
		return (ENXIO);
	}
	rv = FUNC5(sc->reset);
	if (rv != 0) {
		FUNC4(dev, "Cannot unreset 'serial' reset\n");
		return (ENXIO);
	}

	node = FUNC7(dev);
	shift = FUNC11(node);
	rv = FUNC1(dev, 0, 0, &sc->clk);
	if (rv != 0) {
		FUNC4(dev, "Cannot get UART clock: %d\n", rv);
		return (ENXIO);
	}
	rv = FUNC0(sc->clk);
	if (rv != 0) {
		FUNC4(dev, "Cannot enable UART clock: %d\n", rv);
		return (ENXIO);
	}
	rv = FUNC2(sc->clk, &freq);
	if (rv != 0) {
		FUNC4(dev, "Cannot enable UART clock: %d\n", rv);
		return (ENXIO);
	}
	return (FUNC10(dev, shift, 0, (int)freq, 0, 0, 0));
}