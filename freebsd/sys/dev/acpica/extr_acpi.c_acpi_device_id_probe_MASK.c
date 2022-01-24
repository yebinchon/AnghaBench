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
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ ACPI_OBJECT_TYPE ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int ACPI_MATCHHID_HID ; 
 int ACPI_MATCHHID_NOMATCH ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 scalar_t__ ACPI_TYPE_PROCESSOR ; 
 int BUS_PROBE_DEFAULT ; 
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t bus, device_t dev, char **ids, char **match) 
{
    ACPI_HANDLE h;
    ACPI_OBJECT_TYPE t;
    int rv;
    int i;

    h = FUNC1(dev);
    if (ids == NULL || h == NULL)
	return (ENXIO);
    t = FUNC2(dev);
    if (t != ACPI_TYPE_DEVICE && t != ACPI_TYPE_PROCESSOR)
	return (ENXIO);

    /* Try to match one of the array of IDs with a HID or CID. */
    for (i = 0; ids[i] != NULL; i++) {
	rv = FUNC0(h, ids[i]);
	if (rv == ACPI_MATCHHID_NOMATCH)
	    continue;
	
	if (match != NULL) {
	    *match = ids[i];
	}
	return ((rv == ACPI_MATCHHID_HID)?
		    BUS_PROBE_DEFAULT : BUS_PROBE_LOW_PRIORITY);
    }
    return (ENXIO);
}