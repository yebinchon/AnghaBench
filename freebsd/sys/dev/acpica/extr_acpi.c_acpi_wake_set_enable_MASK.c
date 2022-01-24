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
struct acpi_prw_data {int /*<<< orphan*/  gpe_bit; int /*<<< orphan*/  gpe_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_FLAG_WAKE_ENABLED ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 int /*<<< orphan*/  ACPI_GPE_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct acpi_prw_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

int
FUNC7(device_t dev, int enable)
{
    struct acpi_prw_data prw;
    ACPI_STATUS status;
    int flags;

    /* Make sure the device supports waking the system and get the GPE. */
    if (FUNC4(FUNC3(dev), &prw) != 0)
	return (ENXIO);

    flags = FUNC2(dev);
    if (enable) {
	status = FUNC1(prw.gpe_handle, prw.gpe_bit,
	    ACPI_GPE_ENABLE);
	if (FUNC0(status)) {
	    FUNC6(dev, "enable wake failed\n");
	    return (ENXIO);
	}
	FUNC5(dev, flags | ACPI_FLAG_WAKE_ENABLED);
    } else {
	status = FUNC1(prw.gpe_handle, prw.gpe_bit,
	    ACPI_GPE_DISABLE);
	if (FUNC0(status)) {
	    FUNC6(dev, "disable wake failed\n");
	    return (ENXIO);
	}
	FUNC5(dev, flags & ~ACPI_FLAG_WAKE_ENABLED);
    }

    return (0);
}