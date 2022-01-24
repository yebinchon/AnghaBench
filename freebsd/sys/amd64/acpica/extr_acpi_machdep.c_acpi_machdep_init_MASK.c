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
struct acpi_softc {int /*<<< orphan*/  acpi_sysctl_tree; int /*<<< orphan*/  acpi_sysctl_ctx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ACPI_INTR_PIC ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_softc*) ; 
 int /*<<< orphan*/  acpi_reset_video ; 
 struct acpi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ intr_model ; 

int
FUNC6(device_t dev)
{
	struct acpi_softc *sc;

	sc = FUNC5(dev);

	FUNC3(sc);
	FUNC4(sc);

	if (intr_model != ACPI_INTR_PIC)
		FUNC2(intr_model);

	FUNC0(&sc->acpi_sysctl_ctx,
	    FUNC1(sc->acpi_sysctl_tree), OID_AUTO,
	    "reset_video", CTLFLAG_RW, &acpi_reset_video, 0,
	    "Call the VESA reset BIOS vector on the resume path");

	return (0);
}