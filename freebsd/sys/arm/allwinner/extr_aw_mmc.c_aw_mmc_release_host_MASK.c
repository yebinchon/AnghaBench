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
struct aw_mmc_softc {int /*<<< orphan*/  aw_bus_busy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aw_mmc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_mmc_softc*) ; 
 struct aw_mmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aw_mmc_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child)
{
	struct aw_mmc_softc *sc;

	sc = FUNC2(bus);
	FUNC0(sc);
	sc->aw_bus_busy--;
	FUNC3(sc);
	FUNC1(sc);

	return (0);
}