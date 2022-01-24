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
struct acpi_softc {scalar_t__ acpi_sleep_disabled; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiGbl_SystemAwakeAndRunning ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  acpi ; 

__attribute__((used)) static ACPI_STATUS
FUNC2(struct acpi_softc *sc)
{
    ACPI_STATUS		status;

    /* Fail if the system is not fully up and running. */
    if (!AcpiGbl_SystemAwakeAndRunning)
	return (AE_ERROR);

    FUNC0(acpi);
    status = sc->acpi_sleep_disabled ? AE_ERROR : AE_OK;
    sc->acpi_sleep_disabled = TRUE;
    FUNC1(acpi);

    return (status);
}