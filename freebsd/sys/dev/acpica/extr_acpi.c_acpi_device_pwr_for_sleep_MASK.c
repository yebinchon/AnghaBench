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
typedef  int /*<<< orphan*/  sxd ;
struct acpi_softc {int acpi_sstate; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ AE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct acpi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 

int
FUNC9(device_t bus, device_t dev, int *dstate)
{
    struct acpi_softc *sc;
    ACPI_HANDLE handle;
    ACPI_STATUS status;
    char sxd[8];

    handle = FUNC4(dev);

    /*
     * XXX If we find these devices, don't try to power them down.
     * The serial and IRDA ports on my T23 hang the system when
     * set to D3 and it appears that such legacy devices may
     * need special handling in their drivers.
     */
    if (dstate == NULL || handle == NULL ||
	FUNC3(handle, "PNP0500") ||
	FUNC3(handle, "PNP0501") ||
	FUNC3(handle, "PNP0502") ||
	FUNC3(handle, "PNP0510") ||
	FUNC3(handle, "PNP0511"))
	return (ENXIO);

    /*
     * Override next state with the value from _SxD, if present.
     * Note illegal _S0D is evaluated because some systems expect this.
     */
    sc = FUNC6(bus);
    FUNC8(sxd, sizeof(sxd), "_S%dD", sc->acpi_sstate);
    status = FUNC2(handle, sxd, dstate);
    if (FUNC0(status) && status != AE_NOT_FOUND) {
	    FUNC7(dev, "failed to get %s on %s: %s\n", sxd,
		FUNC5(handle), FUNC1(status));
	    return (ENXIO);
    }

    return (0);
}