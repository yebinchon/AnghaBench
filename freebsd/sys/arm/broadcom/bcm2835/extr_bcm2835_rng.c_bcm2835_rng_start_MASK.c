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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcm2835_rng_softc {scalar_t__ sc_rbg2x; } ;

/* Variables and functions */
 int /*<<< orphan*/  RND_VAL_WARM_CNT ; 
 int /*<<< orphan*/  RNG_CTRL ; 
 int /*<<< orphan*/  RNG_RBG2X ; 
 int /*<<< orphan*/  RNG_RBGEN_BIT ; 
 int /*<<< orphan*/  RNG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_rng_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_rng_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_rng_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bcm2835_rng_softc *sc)
{
	uint32_t ctrl;

	/* Disable the interrupt */
	FUNC0(sc);

	/* Set the warmup count */
	FUNC2(sc, RNG_STATUS, RND_VAL_WARM_CNT);

	/* Enable the RNG */
	ctrl = FUNC1(sc, RNG_CTRL);
	ctrl |= RNG_RBGEN_BIT;
	if (sc->sc_rbg2x)
		ctrl |= RNG_RBG2X;
	FUNC2(sc, RNG_CTRL, ctrl);
}