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
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	ACPI_HANDLE	h, tmp;

	h = FUNC3(dev);
	if (FUNC2("dock") ||
	    FUNC0(FUNC1(h, "_DCK", &tmp)))
		return (ENXIO);

	FUNC4(dev, "ACPI Docking Station");

	/*
	 * XXX Somewhere else in the kernel panics on "sysctl kern" if we
	 * return a negative value here (reprobe ok).
	 */
	return (0);
}