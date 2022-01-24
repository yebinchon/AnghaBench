#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct acpi_softc {int /*<<< orphan*/  acpi_sysctl_tree; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_2__ {int /*<<< orphan*/  state; int /*<<< orphan*/  rate; int /*<<< orphan*/  min; int /*<<< orphan*/  cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPIIO_BATT_GET_BATTINFO ; 
 int /*<<< orphan*/  ACPIIO_BATT_GET_BIF ; 
 int /*<<< orphan*/  ACPIIO_BATT_GET_BST ; 
 int /*<<< orphan*/  ACPIIO_BATT_GET_UNITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  acpi_batteries_initted ; 
 TYPE_1__ acpi_battery_battinfo ; 
 int /*<<< orphan*/  acpi_battery_info_expire ; 
 int /*<<< orphan*/  acpi_battery_ioctl ; 
 int /*<<< orphan*/  acpi_battery_sysctl ; 
 int /*<<< orphan*/  acpi_battery_sysctl_ctx ; 
 int /*<<< orphan*/  acpi_battery_sysctl_tree ; 
 int /*<<< orphan*/  acpi_battery_units_sysctl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  battery ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_softc* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(void)
{
    struct acpi_softc	*sc;
    device_t		 dev;
    int	 		 error;

    FUNC0(battery);

    error = ENXIO;
    dev = FUNC8(FUNC7("acpi"), 0);
    if (dev == NULL)
	goto out;
    sc = FUNC9(dev);

    error = FUNC6(ACPIIO_BATT_GET_UNITS, acpi_battery_ioctl,
	NULL);
    if (error != 0)
	goto out;
    error = FUNC6(ACPIIO_BATT_GET_BATTINFO, acpi_battery_ioctl,
	NULL);
    if (error != 0)
	goto out;
    error = FUNC6(ACPIIO_BATT_GET_BIF, acpi_battery_ioctl, NULL);
    if (error != 0)
	goto out;
    error = FUNC6(ACPIIO_BATT_GET_BST, acpi_battery_ioctl, NULL);
    if (error != 0)
	goto out;

    FUNC10(&acpi_battery_sysctl_ctx);
    acpi_battery_sysctl_tree = FUNC2(&acpi_battery_sysctl_ctx,
	FUNC4(sc->acpi_sysctl_tree), OID_AUTO, "battery", CTLFLAG_RD,
	0, "battery status and info");
    FUNC3(&acpi_battery_sysctl_ctx,
	FUNC4(acpi_battery_sysctl_tree),
	OID_AUTO, "life", CTLTYPE_INT | CTLFLAG_RD,
	&acpi_battery_battinfo.cap, 0, acpi_battery_sysctl, "I",
	"percent capacity remaining");
    FUNC3(&acpi_battery_sysctl_ctx,
	FUNC4(acpi_battery_sysctl_tree),
	OID_AUTO, "time", CTLTYPE_INT | CTLFLAG_RD,
	&acpi_battery_battinfo.min, 0, acpi_battery_sysctl, "I",
	"remaining time in minutes");
    FUNC3(&acpi_battery_sysctl_ctx,
	FUNC4(acpi_battery_sysctl_tree),
	OID_AUTO, "rate", CTLTYPE_INT | CTLFLAG_RD,
	&acpi_battery_battinfo.rate, 0, acpi_battery_sysctl, "I",
	"present rate in mW");
    FUNC3(&acpi_battery_sysctl_ctx,
	FUNC4(acpi_battery_sysctl_tree),
	OID_AUTO, "state", CTLTYPE_INT | CTLFLAG_RD,
	&acpi_battery_battinfo.state, 0, acpi_battery_sysctl, "I",
	"current status flags");
    FUNC3(&acpi_battery_sysctl_ctx,
	FUNC4(acpi_battery_sysctl_tree),
	OID_AUTO, "units", CTLTYPE_INT | CTLFLAG_RD,
	NULL, 0, acpi_battery_units_sysctl, "I", "number of batteries");
    FUNC1(&acpi_battery_sysctl_ctx,
	FUNC4(acpi_battery_sysctl_tree),
	OID_AUTO, "info_expire", CTLFLAG_RW,
	&acpi_battery_info_expire, 0,
	"time in seconds until info is refreshed");

    acpi_batteries_initted = TRUE;

out:
    if (error != 0) {
	FUNC5(ACPIIO_BATT_GET_UNITS, acpi_battery_ioctl);
	FUNC5(ACPIIO_BATT_GET_BATTINFO, acpi_battery_ioctl);
	FUNC5(ACPIIO_BATT_GET_BIF, acpi_battery_ioctl);
	FUNC5(ACPIIO_BATT_GET_BST, acpi_battery_ioctl);
    }
    return (error);
}