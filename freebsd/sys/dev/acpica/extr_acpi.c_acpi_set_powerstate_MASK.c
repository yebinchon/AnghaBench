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
typedef  scalar_t__ ACPI_STATUS ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int ACPI_D_STATES_MAX ; 
 int ACPI_STATE_D0 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC6(device_t child, int state)
{
    ACPI_HANDLE h;
    ACPI_STATUS status;

    h = FUNC2(child);
    if (state < ACPI_STATE_D0 || state > ACPI_D_STATES_MAX)
	return (EINVAL);
    if (h == NULL)
	return (0);

    /* Ignore errors if the power methods aren't present. */
    status = FUNC4(h, state);
    if (FUNC0(status)) {
	if (bootverbose)
	    FUNC5(child, "set ACPI power state D%d on %s\n",
		state, FUNC3(h));
    } else if (status != AE_NOT_FOUND)
	FUNC5(child,
	    "failed to set ACPI power state D%d on %s: %s\n", state,
	    FUNC3(h), FUNC1(status));

    return (0);
}