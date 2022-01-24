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
struct acpi_panasonic_softc {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_SET ; 
 struct acpi_panasonic_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct acpi_panasonic_softc *sc;
	int mute;

	/* Mute the main audio during reboot to prevent static burst to speaker. */
	sc = FUNC0(dev);
	mute = 1;
	FUNC1(sc->handle, HKEY_SET, &mute);
	return (0);
}