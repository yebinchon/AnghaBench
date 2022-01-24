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
struct tegra_abpmisc_softc {int /*<<< orphan*/ * strap_opt_res; int /*<<< orphan*/ * abp_misc_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct tegra_abpmisc_softc* dev_sc ; 
 struct tegra_abpmisc_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_abpmisc_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	int rid;
	struct tegra_abpmisc_softc *sc;

	sc = FUNC3(dev);
	sc->dev = dev;

	rid = 0;
	sc->abp_misc_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->abp_misc_res == NULL) {
		FUNC4(dev, "Cannot map ABP misc registers.\n");
		goto fail;
	}

	rid = 1;
	sc->strap_opt_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->strap_opt_res == NULL) {
		FUNC4(dev, "Cannot map strapping options registers.\n");
		goto fail;
	}

	FUNC5(sc);

	/* XXX - Hack - address collision with pinmux. */
	if (sc->abp_misc_res != NULL) {
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->abp_misc_res);
		sc->abp_misc_res = NULL;
	}

	dev_sc = sc;
	return (FUNC1(dev));

fail:
	if (sc->abp_misc_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->abp_misc_res);
	if (sc->strap_opt_res != NULL)
		FUNC2(dev, SYS_RES_MEMORY, 1, sc->strap_opt_res);

	return (ENXIO);
}