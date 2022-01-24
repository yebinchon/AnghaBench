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
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int ACPI_ACAD_RETRY_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct acpi_acad_softc* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
    struct acpi_acad_softc *sc;
    device_t	dev;
    int		retry;

    dev = (device_t)arg;
    sc = FUNC4(dev);
    FUNC0(dev, FUNC3(dev),
		"acline initialization start\n");

    for (retry = 0; retry < ACPI_ACAD_RETRY_MAX; retry++) {
	FUNC2(dev);
	if (sc->status != -1)
	    break;
	FUNC1(10000);
    }

    FUNC0(dev, FUNC3(dev),
		"acline initialization done, tried %d times\n", retry + 1);
}