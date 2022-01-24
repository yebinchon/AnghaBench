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
typedef  int uint32_t ;
struct pl310_softc {int /*<<< orphan*/  sc_enabled; } ;

/* Variables and functions */
 int FILTER_HANDLED ; 
 int INTR_MASK_ECNTR ; 
 int /*<<< orphan*/  PL310_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct pl310_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *arg)
{
	struct pl310_softc *sc = arg;
	uint32_t intr;

	intr = FUNC1(sc, PL310_INTR_MASK);

	if (!sc->sc_enabled && (intr & INTR_MASK_ECNTR)) {
		/*
		 * This is for debug purpose, so be blunt about it
		 * We disable PL310 only when something fishy is going
		 * on and we need to make sure L2 cache is 100% disabled
		 */
		FUNC0("pl310: caches disabled but cache event detected\n");
	}

	return (FILTER_HANDLED);
}