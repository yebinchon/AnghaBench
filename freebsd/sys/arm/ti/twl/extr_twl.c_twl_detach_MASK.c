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
struct twl_softc {scalar_t__ sc_clks; scalar_t__ sc_vreg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct twl_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct twl_softc *sc;

	sc = FUNC2(dev);

	if (sc->sc_vreg)
		FUNC1(dev, sc->sc_vreg);
	if (sc->sc_clks)
		FUNC1(dev, sc->sc_clks);
	

	FUNC0(sc);

	return (0);
}