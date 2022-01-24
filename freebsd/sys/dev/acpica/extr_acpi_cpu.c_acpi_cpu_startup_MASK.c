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
struct acpi_cpu_softc {int /*<<< orphan*/  cpu_handle; scalar_t__ cpu_non_c3; int /*<<< orphan*/  cpu_cx_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_cpu_softc*) ; 
 int CPU_QUIRK_NO_C3 ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_cpu_devclass ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  acpi_cpu_global_cx_lowest_sysctl ; 
 int /*<<< orphan*/  acpi_cpu_idle ; 
 int /*<<< orphan*/  acpi_cpu_notify ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_cpu_softc*) ; 
 scalar_t__ cpu_cx_generic ; 
 scalar_t__ cpu_cx_lowest_lim ; 
 int /*<<< orphan*/ * cpu_devices ; 
 int /*<<< orphan*/  cpu_idle_hook ; 
 int cpu_ndevices ; 
 int cpu_quirks ; 
 int /*<<< orphan*/  cpu_sysctl_ctx ; 
 int /*<<< orphan*/  cpu_sysctl_tree ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 struct acpi_cpu_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
    struct acpi_cpu_softc *sc;
    int i;

    /* Get set of CPU devices */
    FUNC6(acpi_cpu_devclass, &cpu_devices, &cpu_ndevices);

    /*
     * Setup any quirks that might necessary now that we have probed
     * all the CPUs
     */
    FUNC4();

    if (cpu_cx_generic) {
	/*
	 * We are using generic Cx mode, probe for available Cx states
	 * for all processors.
	 */
	for (i = 0; i < cpu_ndevices; i++) {
	    sc = FUNC7(cpu_devices[i]);
	    FUNC3(sc);
	}
    } else {
	/*
	 * We are using _CST mode, remove C3 state if necessary.
	 * As we now know for sure that we will be using _CST mode
	 * install our notify handler.
	 */
	for (i = 0; i < cpu_ndevices; i++) {
	    sc = FUNC7(cpu_devices[i]);
	    if (cpu_quirks & CPU_QUIRK_NO_C3) {
		sc->cpu_cx_count = FUNC9(sc->cpu_cx_count, sc->cpu_non_c3 + 1);
	    }
	    FUNC0(sc->cpu_handle, ACPI_DEVICE_NOTIFY,
		acpi_cpu_notify, sc);
	}
    }

    /* Perform Cx final initialization. */
    for (i = 0; i < cpu_ndevices; i++) {
	sc = FUNC7(cpu_devices[i]);
	FUNC5(sc);
    }

    /* Add a sysctl handler to handle global Cx lowest setting */
    FUNC1(&cpu_sysctl_ctx, FUNC2(cpu_sysctl_tree),
	OID_AUTO, "cx_lowest", CTLTYPE_STRING | CTLFLAG_RW,
	NULL, 0, acpi_cpu_global_cx_lowest_sysctl, "A",
	"Global lowest Cx sleep state to use");

    /* Take over idling from cpu_idle_default(). */
    cpu_cx_lowest_lim = 0;
    for (i = 0; i < cpu_ndevices; i++) {
	sc = FUNC7(cpu_devices[i]);
	FUNC8(sc);
    }
#if defined(__i386__) || defined(__amd64__)
    cpu_idle_hook = acpi_cpu_idle;
#endif
}