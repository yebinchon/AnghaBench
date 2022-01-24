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
struct acpi_acad_softc {int status; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  acpi_acad_devclass ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_acad_softc* FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(int *status)
{
    struct acpi_acad_softc *sc;
    device_t dev;

    dev = FUNC1(acpi_acad_devclass, 0);
    if (dev == NULL)
	return (ENXIO);
    sc = FUNC2(dev);

    FUNC0(dev);
    *status = sc->status;

    return (0);
}