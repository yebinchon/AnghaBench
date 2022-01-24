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
struct bcm2835_rng_softc {int /*<<< orphan*/ * sc_mem_res; int /*<<< orphan*/  sc_rngto; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_rng_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bcm2835_rng_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct bcm2835_rng_softc *sc;

	sc = FUNC3(dev);

	/* Stop the RNG */
	FUNC0(sc);

	/* Drain the callout it */
	FUNC2(&sc->sc_rngto);

	/* Release memory resource */
	if (sc->sc_mem_res != NULL)
		FUNC1(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

	return (0);
}