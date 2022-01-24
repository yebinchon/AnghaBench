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
struct acpi_dock_softc {scalar_t__ status; scalar_t__ _sta; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DOCK_ISOLATE ; 
 scalar_t__ ACPI_DOCK_STATUS_DOCKED ; 
 scalar_t__ ACPI_DOCK_STATUS_UNDOCKED ; 
 scalar_t__ ACPI_DOCK_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  ACPI_DOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct acpi_dock_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dock ; 

__attribute__((used)) static void
FUNC10(device_t dev)
{
	struct acpi_dock_softc *sc;
	ACPI_HANDLE		h;

	FUNC0(dock);

	sc = FUNC8(dev);
	h = FUNC7(dev);

	if (sc->status == ACPI_DOCK_STATUS_DOCKED ||
	    sc->status == ACPI_DOCK_STATUS_UNKNOWN) {
		FUNC2(dev);
		if (FUNC3(dev, ACPI_DOCK_ISOLATE) != 0)
			return;

		FUNC5(dev, ACPI_DOCK_UNLOCK);

		if (FUNC4(dev, 1, 0) != 0) {
			FUNC9(dev, "_EJ0 failed\n");
			return;
		}

		FUNC1("Dock", h, 0);

		sc->status = ACPI_DOCK_STATUS_UNDOCKED;
	}

	FUNC6(dev);
	if (sc->_sta != 0)
		FUNC9(dev, "mechanical failure (%#x).\n", sc->_sta);
}