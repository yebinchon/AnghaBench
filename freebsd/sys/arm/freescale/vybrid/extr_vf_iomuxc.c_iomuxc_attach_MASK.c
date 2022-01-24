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
struct iomuxc_softc {int /*<<< orphan*/ * tmr_res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct iomuxc_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  iomuxc_spec ; 
 int /*<<< orphan*/  FUNC3 (struct iomuxc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct iomuxc_softc *sc;

	sc = FUNC1(dev);
	sc->dev = dev;

	if (FUNC0(dev, iomuxc_spec, sc->tmr_res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC5(sc->tmr_res[0]);
	sc->bsh = FUNC4(sc->tmr_res[0]);

	FUNC3(sc);

	return (0);
}