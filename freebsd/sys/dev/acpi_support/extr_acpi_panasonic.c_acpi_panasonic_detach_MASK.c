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
struct acpi_panasonic_softc {int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  handle; int /*<<< orphan*/  power_evh; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_panasonic_notify ; 
 struct acpi_panasonic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power_profile_change ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct acpi_panasonic_softc *sc;

	sc = FUNC2(dev);

	/* Remove power profile event handler */
	FUNC1(power_profile_change, sc->power_evh);

	/* Remove notify handler */
	FUNC0(sc->handle, ACPI_DEVICE_NOTIFY,
	    acpi_panasonic_notify);

	/* Free sysctl tree */
	FUNC3(&sc->sysctl_ctx);

	return (0);
}