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
struct omap_tll_softc {int /*<<< orphan*/ * tll_mem_res; int /*<<< orphan*/  tll_mem_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct omap_tll_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_tll_softc*) ; 
 int /*<<< orphan*/ * omap_tll_sc ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct omap_tll_softc *sc;

	sc = FUNC1(dev);
	FUNC2(sc);

	/* Release the other register set memory maps */
	if (sc->tll_mem_res) {
		FUNC0(dev, SYS_RES_MEMORY,
		    sc->tll_mem_rid, sc->tll_mem_res);
		sc->tll_mem_res = NULL;
	}

	omap_tll_sc = NULL;

	return (0);
}