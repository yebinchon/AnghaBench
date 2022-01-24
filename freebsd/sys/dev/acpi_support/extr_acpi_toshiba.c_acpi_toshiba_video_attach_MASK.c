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
struct acpi_toshiba_softc {int /*<<< orphan*/  video_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_toshiba_devclass ; 
 struct acpi_toshiba_softc* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct		acpi_toshiba_softc *sc;

	sc = FUNC1(acpi_toshiba_devclass, 0);
	if (sc == NULL)
		return (ENXIO);
	sc->video_handle = FUNC0(dev);
	return (0);
}