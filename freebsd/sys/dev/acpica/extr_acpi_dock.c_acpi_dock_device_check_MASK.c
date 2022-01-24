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
struct acpi_dock_softc {scalar_t__ _sta; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ ACPI_DOCK_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct acpi_dock_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dock ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct acpi_dock_softc *sc;

	FUNC1(dock);

	sc = FUNC5(dev);
	FUNC2(dev);

	/*
	 * If the _STA method indicates 'present' and 'functioning', the
	 * system is docked.  If _STA does not exist for this device, it
	 * is always present.
	 */
	if (sc->_sta == ACPI_DOCK_STATUS_UNKNOWN ||
	    FUNC0(sc->_sta))
		FUNC3(dev);
	else if (sc->_sta == 0)
		FUNC4(dev);
}