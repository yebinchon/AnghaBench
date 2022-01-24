#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tegra_drm {int dummy; } ;
struct host1x_softc {int /*<<< orphan*/ * mem_res; TYPE_2__* tegra_drm; int /*<<< orphan*/  clients; void* dev; } ;
typedef  void* device_t ;
struct TYPE_4__ {void* dev; TYPE_2__** dev_private; } ;
struct TYPE_5__ {TYPE_1__ drm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct host1x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_softc*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (void*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct host1x_softc* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	int rv, rid;
	struct host1x_softc *sc;

	sc = FUNC6(dev);
	sc->tegra_drm = FUNC9(sizeof(struct tegra_drm), DRM_MEM_DRIVER,
	    M_WAITOK | M_ZERO);

	/* crosslink together all worlds */
	sc->dev = dev;
	sc->tegra_drm->drm_dev.dev_private = &sc->tegra_drm;
	sc->tegra_drm->drm_dev.dev = dev;

	FUNC2(&sc->clients);

	FUNC1(sc);

	/* Get the memory resource for the register mapping. */
	rid = 0;
	sc->mem_res = FUNC3(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC7(dev, "Cannot map registers.\n");
		rv = ENXIO;
		goto fail;
	}

	return (FUNC4(dev));

fail:
	if (sc->tegra_drm != NULL)
		FUNC8(sc->tegra_drm, DRM_MEM_DRIVER);
	if (sc->mem_res != NULL)
		FUNC5(dev, SYS_RES_MEMORY, 0, sc->mem_res);
	FUNC0(sc);
	return (rv);
}