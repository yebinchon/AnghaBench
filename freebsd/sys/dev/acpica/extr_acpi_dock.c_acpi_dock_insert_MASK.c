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
struct acpi_dock_softc {scalar_t__ status; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DOCK_CONNECT ; 
 int /*<<< orphan*/  ACPI_DOCK_LOCK ; 
 scalar_t__ ACPI_DOCK_STATUS_DOCKED ; 
 scalar_t__ ACPI_DOCK_STATUS_UNDOCKED ; 
 scalar_t__ ACPI_DOCK_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cold ; 
 struct acpi_dock_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dock ; 

__attribute__((used)) static void
FUNC8(device_t dev)
{
	struct acpi_dock_softc	*sc;
	ACPI_HANDLE		h;

	FUNC0(dock);

	sc = FUNC6(dev);
	h = FUNC5(dev);

	if (sc->status == ACPI_DOCK_STATUS_UNDOCKED ||
	    sc->status == ACPI_DOCK_STATUS_UNKNOWN) {
		FUNC3(dev, ACPI_DOCK_LOCK);
		if (FUNC2(dev, ACPI_DOCK_CONNECT) != 0) {
			FUNC7(dev, "_DCK failed\n");
			return;
		}

		if (!cold) {
			FUNC4(dev);

			FUNC1("Dock", h, 1);
		}

		sc->status = ACPI_DOCK_STATUS_DOCKED;
	}
}