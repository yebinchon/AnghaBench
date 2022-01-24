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
struct ec_softc {scalar_t__ have_arbitrator; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct ec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ec_softc*) ; 
 struct ec_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct ec_softc* ec_sc ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ec_softc *sc;

	sc = FUNC2(dev);
	sc->dev = dev;

	ec_sc = sc;

	FUNC1(sc);

	/*
	 * Claim the bus.
	 *
	 * We don't know cases when EC is master,
	 * so hold the bus forever for us.
	 *
	 */

	if (sc->have_arbitrator && FUNC0(sc) != 0) {
		return (ENXIO);
	}

	return (0);
}