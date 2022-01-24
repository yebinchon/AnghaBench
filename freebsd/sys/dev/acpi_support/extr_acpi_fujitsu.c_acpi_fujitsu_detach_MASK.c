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
struct acpi_fujitsu_softc {int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_fujitsu_notify_handler ; 
 struct acpi_fujitsu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct acpi_fujitsu_softc *sc;

	sc = FUNC1(dev);
	FUNC0(sc->handle, ACPI_DEVICE_NOTIFY,
	   acpi_fujitsu_notify_handler);

	FUNC2(&sc->sysctl_ctx);

	return (0);
}