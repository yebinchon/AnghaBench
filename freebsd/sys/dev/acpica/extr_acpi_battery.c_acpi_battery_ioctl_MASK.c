#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  oeminfo; int /*<<< orphan*/  type; int /*<<< orphan*/  serial; int /*<<< orphan*/  model; } ;
union acpi_battery_ioctl_arg {int unit; TYPE_1__ bst; TYPE_1__ bif; TYPE_1__ battinfo; } ;
typedef  int u_long ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
#define  ACPIIO_BATT_GET_BATTINFO 131 
#define  ACPIIO_BATT_GET_BIF 130 
#define  ACPIIO_BATT_GET_BST 129 
#define  ACPIIO_BATT_GET_UNITS 128 
 int ACPI_BATTERY_ALL_UNITS ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int EINVAL ; 
 int ENXIO ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC8(u_long cmd, caddr_t addr, void *arg)
{
    union acpi_battery_ioctl_arg *ioctl_arg;
    int error, unit;
    device_t dev;

    /* For commands that use the ioctl_arg struct, validate it first. */
    error = ENXIO;
    unit = 0;
    dev = NULL;
    ioctl_arg = NULL;
    if (FUNC2(cmd) == sizeof(*ioctl_arg)) {
	ioctl_arg = (union acpi_battery_ioctl_arg *)addr;
	unit = ioctl_arg->unit;
	if (unit != ACPI_BATTERY_ALL_UNITS)
	    dev = FUNC4(unit);
    }

    /*
     * No security check required: information retrieval only.  If
     * new functions are added here, a check might be required.
     */
    switch (cmd) {
    case ACPIIO_BATT_GET_UNITS:
	*(int *)addr = FUNC6();
	error = 0;
	break;
    case ACPIIO_BATT_GET_BATTINFO:
	if (dev != NULL || unit == ACPI_BATTERY_ALL_UNITS) {
	    FUNC7(&ioctl_arg->battinfo, sizeof(ioctl_arg->battinfo));
	    error = FUNC5(dev, &ioctl_arg->battinfo);
	}
	break;
    case ACPIIO_BATT_GET_BIF:
	if (dev != NULL) {
	    FUNC7(&ioctl_arg->bif, sizeof(ioctl_arg->bif));
	    error = FUNC0(dev, &ioctl_arg->bif);

	    /*
	     * Remove invalid characters.  Perhaps this should be done
	     * within a convenience function so all callers get the
	     * benefit.
	     */
	    FUNC3(ioctl_arg->bif.model,
		sizeof(ioctl_arg->bif.model));
	    FUNC3(ioctl_arg->bif.serial,
		sizeof(ioctl_arg->bif.serial));
	    FUNC3(ioctl_arg->bif.type,
		sizeof(ioctl_arg->bif.type));
	    FUNC3(ioctl_arg->bif.oeminfo,
		sizeof(ioctl_arg->bif.oeminfo));
	}
	break;
    case ACPIIO_BATT_GET_BST:
	if (dev != NULL) {
	    FUNC7(&ioctl_arg->bst, sizeof(ioctl_arg->bst));
	    error = FUNC1(dev, &ioctl_arg->bst);
	}
	break;
    default:
	error = EINVAL;
    }

    return (error);
}