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
struct acpi_prw_data {int lowest_wake; int /*<<< orphan*/  gpe_bit; int /*<<< orphan*/  gpe_handle; } ;
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int ACPI_FLAG_WAKE_ENABLED ; 
 int /*<<< orphan*/  ACPI_GPE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct acpi_prw_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(ACPI_HANDLE handle, int sstate)
{
    struct acpi_prw_data prw;
    device_t dev;

    /* Check that this is a wake-capable device and get its GPE. */
    if (FUNC5(handle, &prw) != 0)
	return (ENXIO);
    dev = FUNC2(handle);

    /*
     * The destination sleep state must be less than (i.e., higher power)
     * or equal to the value specified by _PRW.  If this GPE cannot be
     * enabled for the next sleep state, then disable it.  If it can and
     * the user requested it be enabled, turn on any required power resources
     * and set _PSW.
     */
    if (sstate > prw.lowest_wake) {
	FUNC0(prw.gpe_handle, prw.gpe_bit, ACPI_GPE_DISABLE);
	if (bootverbose)
	    FUNC7(dev, "wake_prep disabled wake for %s (S%d)\n",
		FUNC4(handle), sstate);
    } else if (dev && (FUNC3(dev) & ACPI_FLAG_WAKE_ENABLED) != 0) {
	FUNC6(handle, 1);
	FUNC1(handle, "_PSW", 1);
	if (bootverbose)
	    FUNC7(dev, "wake_prep enabled for %s (S%d)\n",
		FUNC4(handle), sstate);
    }

    return (0);
}