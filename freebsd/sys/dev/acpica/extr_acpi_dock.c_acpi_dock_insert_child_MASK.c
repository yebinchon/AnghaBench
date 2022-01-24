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
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_INIT_WALK_INFO ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiNsInitOneDevice ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSL_NOTIFY_HANDLER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_dock_attach_later ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC9(ACPI_HANDLE handle, UINT32 level, void *context,
    void **status)
{
	device_t	dock_dev, dev;
	ACPI_HANDLE	dock_handle;

	dock_dev = (device_t)context;
	dock_handle = FUNC6(dock_dev);

	if (!FUNC4(dock_handle, handle))
		goto out;

	FUNC0(dock_dev, FUNC3(dock_dev),
		    "inserting device for %s\n", FUNC7(handle));

#if 0
	/*
	 * If the system boot up w/o Docking, the devices under the dock
	 * still un-initialized, also control methods such as _INI, _STA
	 * are not executed.
	 * Normal devices are initialized at booting by calling
	 * AcpiInitializeObjects(), however the devices under the dock
	 * need to be initialized here on the scheme of ACPICA.
	 */
	ACPI_INIT_WALK_INFO	Info;

	AcpiNsWalkNamespace(ACPI_TYPE_ANY, handle,
	    100, TRUE, AcpiNsInitOneDevice, NULL, &Info, NULL);
#endif

	dev = FUNC5(handle);
	if (dev == NULL) {
		FUNC8(dock_dev, "error: %s has no associated device\n",
		    FUNC7(handle));
		goto out;
	}

	FUNC2(OSL_NOTIFY_HANDLER, acpi_dock_attach_later, dev);

out:
	return (AE_OK);
}