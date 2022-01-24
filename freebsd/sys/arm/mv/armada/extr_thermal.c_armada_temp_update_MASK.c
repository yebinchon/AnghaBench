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
struct armada_thermal_softc {int /*<<< orphan*/  temp_upd; int /*<<< orphan*/  chip_temperature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct armada_thermal_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct armada_thermal_softc*) ; 
 int /*<<< orphan*/  hz ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct armada_thermal_softc *sc;

	sc = arg;
	/* Update temperature value, keel old if the readout is not valid */
	(void)FUNC0(sc, &sc->chip_temperature);

	FUNC1(&sc->temp_upd, hz, armada_temp_update, sc);
}