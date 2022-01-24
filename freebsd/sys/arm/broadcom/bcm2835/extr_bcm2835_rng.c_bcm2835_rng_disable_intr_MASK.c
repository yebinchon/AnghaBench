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
struct bcm2835_rng_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNG_INT_MASK ; 
 int /*<<< orphan*/  RNG_INT_OFF_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_rng_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_rng_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct bcm2835_rng_softc *sc)
{
	uint32_t mask;

	/* Set the interrupt off bit in the interrupt mask register */
	mask = FUNC0(sc, RNG_INT_MASK);
	mask |= RNG_INT_OFF_BIT;
        FUNC1(sc, RNG_INT_MASK, mask);
}