#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mv_gpio_softc {int pin_num; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * irq_rid; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * sc_busdev; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; scalar_t__ mem_rid; TYPE_1__* gpio_setup; scalar_t__ offset; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  gp_caps; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GPIO_GENERIC_CAP ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  MV_GPIO_MAX_NPINS ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mv_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	int i, rv;
	struct mv_gpio_softc *sc;
	phandle_t node;
	pcell_t pincnt = 0;

	sc = (struct mv_gpio_softc *)FUNC5(dev);
	if (sc == NULL)
		return (ENXIO);

	node = FUNC11(dev);
	sc->dev = dev;

	if (FUNC1(node, "pin-count", &pincnt, sizeof(pcell_t)) >= 0 ||
	    FUNC1(node, "ngpios", &pincnt, sizeof(pcell_t)) >= 0) {
		sc->pin_num = FUNC0(pincnt, MV_GPIO_MAX_NPINS);
		if (bootverbose)
			FUNC6(dev, "%d pins available\n", sc->pin_num);
	} else {
		FUNC6(dev, "ERROR: no pin-count or ngpios entry found!\n");
		return (ENXIO);
	}

	if (FUNC1(node, "offset", &sc->offset, sizeof(sc->offset)) == -1)
		sc->offset = 0;

	/* Assign generic capabilities to every gpio pin */
	for(i = 0; i < sc->pin_num; i++)
		sc->gpio_setup[i].gp_caps = GPIO_GENERIC_CAP;

	FUNC9(&sc->mutex, FUNC4(dev), NULL, MTX_SPIN);

	sc->mem_rid = 0;
	sc->mem_res = FUNC2(dev, SYS_RES_MEMORY, &sc->mem_rid,
		 RF_ACTIVE | RF_SHAREABLE );

	if (!sc->mem_res) {
		FUNC8(&sc->mutex);
		FUNC6(dev, "could not allocate memory window\n");
		return (ENXIO);
	}

	sc->bst = FUNC13(sc->mem_res);
	sc->bsh = FUNC12(sc->mem_res);

	rv = FUNC10(sc, node);
	if (rv != 0)
		return (rv);

	sc->sc_busdev = FUNC7(dev);
	if (sc->sc_busdev == NULL) {
		FUNC8(&sc->mutex);
		FUNC3(dev, SYS_RES_IRQ,
			sc->irq_rid[i], sc->irq_res[i]);
		return (ENXIO);
	}

	return (0);
}