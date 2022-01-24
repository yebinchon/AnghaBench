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
struct acpi_cpu_softc {int /*<<< orphan*/  cpu_handle; } ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_NOTIFY_CX_STATES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  cpu ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_cpu_softc*) ; 

__attribute__((used)) static void
FUNC8(ACPI_HANDLE h, UINT32 notify, void *context)
{
    struct acpi_cpu_softc *sc = (struct acpi_cpu_softc *)context;

    if (notify != ACPI_NOTIFY_CX_STATES)
	return;

    /*
     * C-state data for target CPU is going to be in flux while we execute
     * acpi_cpu_cx_cst, so disable entering acpi_cpu_idle.
     * Also, it may happen that multiple ACPI taskqueues may concurrently
     * execute notifications for the same CPU.  ACPI_SERIAL is used to
     * protect against that.
     */
    FUNC0(cpu);
    FUNC6(sc);

    /* Update the list of Cx states. */
    FUNC3(sc);
    FUNC4(sc);
    FUNC5(sc);

    FUNC7(sc);
    FUNC1(cpu);

    FUNC2("PROCESSOR", sc->cpu_handle, notify);
}