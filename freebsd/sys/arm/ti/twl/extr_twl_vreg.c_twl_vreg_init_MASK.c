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
struct twl_vreg_softc {int /*<<< orphan*/  sc_init_hook; int /*<<< orphan*/  sc_pdev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct twl_vreg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct twl_vreg_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twl4030_regulators ; 
 int /*<<< orphan*/  twl6030_regulators ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct twl_vreg_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *dev)
{
	struct twl_vreg_softc *sc;

	sc = FUNC3((device_t)dev);

	FUNC0(sc);

	if (FUNC4(sc->sc_pdev))
		FUNC7(sc, twl4030_regulators);
	else if (FUNC6(sc->sc_pdev) || FUNC5(sc->sc_pdev))
		FUNC7(sc, twl6030_regulators);

	FUNC1(sc);

	FUNC2(&sc->sc_init_hook);
}