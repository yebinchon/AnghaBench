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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_wake_set_sysctl ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
    int error, i, numdevs;
    device_t *devlist;
    device_t child;
    ACPI_STATUS status;

    error = FUNC5(dev, &devlist, &numdevs);
    if (error != 0 || numdevs == 0) {
	if (numdevs == 0)
	    FUNC9(devlist, M_TEMP);
	return (error);
    }
    for (i = 0; i < numdevs; i++) {
	child = devlist[i];
	FUNC10(child);
	if (!FUNC8(child))
	    continue;
	status = FUNC1(FUNC4(child), "_PRW", NULL, NULL);
	if (FUNC0(status)) {
	    FUNC2(FUNC6(child),
		FUNC3(FUNC7(child)), OID_AUTO,
		"wake", CTLTYPE_INT | CTLFLAG_RW, child, 0,
		acpi_wake_set_sysctl, "I", "Device set to wake the system");
	}
    }
    FUNC9(devlist, M_TEMP);

    return (0);
}