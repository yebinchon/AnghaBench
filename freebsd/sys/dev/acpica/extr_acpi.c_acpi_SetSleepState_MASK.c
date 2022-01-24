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
struct acpi_softc {int /*<<< orphan*/  acpi_dev; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

ACPI_STATUS
FUNC2(struct acpi_softc *sc, int state)
{
    static int once;

    if (!once) {
	FUNC1(sc->acpi_dev,
"warning: acpi_SetSleepState() deprecated, need to update your software\n");
	once = 1;
    }
    return (FUNC0(sc, state));
}