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
struct spi_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * memres; int /*<<< orphan*/  dev; int /*<<< orphan*/ * intres; int /*<<< orphan*/ * inthandle; int /*<<< orphan*/ ** cspins; int /*<<< orphan*/ * spibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct spi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct spi_softc *sc = FUNC4(dev);
	int error, idx;

	if ((error = FUNC0(sc->dev)) != 0)
		return (error);

	if (sc->spibus != NULL)
		FUNC3(dev, sc->spibus);

	for (idx = 0; idx < FUNC7(sc->cspins); ++idx) {
		if (sc->cspins[idx] != NULL)
			FUNC5(sc->cspins[idx]);
	}

	if (sc->inthandle != NULL)
		FUNC2(sc->dev, sc->intres, sc->inthandle);
	if (sc->intres != NULL)
		FUNC1(sc->dev, SYS_RES_IRQ, 0, sc->intres);
	if (sc->memres != NULL)
		FUNC1(sc->dev, SYS_RES_MEMORY, 0, sc->memres);

	FUNC6(&sc->mtx);

	return (0);
}