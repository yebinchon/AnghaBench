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
struct acpi_softc {int /*<<< orphan*/  acpi_dev; scalar_t__ acpi_do_disable; scalar_t__ acpi_handle_reboot; } ;
typedef  int /*<<< orphan*/  register_t ;
typedef  scalar_t__ ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_STATE_S5 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int RB_HALT ; 
 int RB_POWEROFF ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * panicstr ; 

__attribute__((used)) static void
FUNC11(void *arg, int howto)
{
    struct acpi_softc *sc = (struct acpi_softc *)arg;
    register_t intr;
    ACPI_STATUS status;

    /*
     * XXX Shutdown code should only run on the BSP (cpuid 0).
     * Some chipsets do not power off the system correctly if called from
     * an AP.
     */
    if ((howto & RB_POWEROFF) != 0) {
	status = FUNC3(ACPI_STATE_S5);
	if (FUNC0(status)) {
	    FUNC8(sc->acpi_dev, "AcpiEnterSleepStatePrep failed - %s\n",
		FUNC4(status));
	    return;
	}
	FUNC8(sc->acpi_dev, "Powering system off\n");
	intr = FUNC9();
	status = FUNC2(ACPI_STATE_S5);
	if (FUNC0(status)) {
	    FUNC10(intr);
	    FUNC8(sc->acpi_dev, "power-off failed - %s\n",
		FUNC4(status));
	} else {
	    FUNC7(1000000);
	    FUNC10(intr);
	    FUNC8(sc->acpi_dev, "power-off failed - timeout\n");
	}
    } else if ((howto & RB_HALT) == 0 && sc->acpi_handle_reboot) {
	/* Reboot using the reset register. */
	status = FUNC5();
	if (FUNC1(status)) {
	    FUNC7(1000000);
	    FUNC8(sc->acpi_dev, "reset failed - timeout\n");
	} else if (status != AE_NOT_EXIST)
	    FUNC8(sc->acpi_dev, "reset failed - %s\n",
		FUNC4(status));
    } else if (sc->acpi_do_disable && panicstr == NULL) {
	/*
	 * Only disable ACPI if the user requested.  On some systems, writing
	 * the disable value to SMI_CMD hangs the system.
	 */
	FUNC8(sc->acpi_dev, "Shutting down\n");
	FUNC6();
    }
}