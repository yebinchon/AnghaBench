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
struct acpi_cmbat_softc {int /*<<< orphan*/  bst_lastupdated; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALL_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSL_NOTIFY_HANDLER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_cmbat_init_battery ; 
 int /*<<< orphan*/  acpi_cmbat_notify_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_cmbat_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
    int		error;
    ACPI_HANDLE	handle;
    struct acpi_cmbat_softc *sc;

    sc = FUNC4(dev);
    handle = FUNC3(dev);
    sc->dev = dev;

    FUNC6(&sc->bst_lastupdated);

    error = FUNC2(dev);
    if (error != 0) {
    	FUNC5(dev, "registering battery failed\n");
	return (error);
    }

    /*
     * Install a system notify handler in addition to the device notify.
     * Toshiba notebook uses this alternate notify for its battery.
     */
    FUNC0(handle, ACPI_ALL_NOTIFY,
	acpi_cmbat_notify_handler, dev);

    FUNC1(OSL_NOTIFY_HANDLER, acpi_cmbat_init_battery, dev);

    return (0);
}