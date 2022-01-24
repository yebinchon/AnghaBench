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
struct acpi_cmbat_softc {int /*<<< orphan*/  bst_lastupdated; } ;
typedef  scalar_t__ device_t ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
#define  ACPI_BATTERY_BIF_CHANGE 131 
#define  ACPI_BATTERY_BST_CHANGE 130 
#define  ACPI_NOTIFY_BUS_CHECK 129 
#define  ACPI_NOTIFY_DEVICE_CHECK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  OSL_NOTIFY_HANDLER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  acpi_cmbat_get_bif_task ; 
 struct acpi_cmbat_softc* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(ACPI_HANDLE h, UINT32 notify, void *context)
{
    struct acpi_cmbat_softc *sc;
    device_t dev;

    dev = (device_t)context;
    sc = FUNC2(dev);

    switch (notify) {
    case ACPI_NOTIFY_DEVICE_CHECK:
    case ACPI_BATTERY_BST_CHANGE:
	/*
	 * Clear the last updated time.  The next call to retrieve the
	 * battery status will get the new value for us.
	 */
	FUNC3(&sc->bst_lastupdated);
	break;
    case ACPI_NOTIFY_BUS_CHECK:
    case ACPI_BATTERY_BIF_CHANGE:
	/*
	 * Queue a callback to get the current battery info from thread
	 * context.  It's not safe to block in a notify handler.
	 */
	FUNC0(OSL_NOTIFY_HANDLER, acpi_cmbat_get_bif_task, dev);
	break;
    }

    FUNC1("CMBAT", h, notify);
}