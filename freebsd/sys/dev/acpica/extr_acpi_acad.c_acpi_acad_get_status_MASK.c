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
typedef  void* device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  POWER_PROFILE_ECONOMY ; 
 int /*<<< orphan*/  POWER_PROFILE_PERFORMANCE ; 
 int /*<<< orphan*/  acad ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 struct acpi_acad_softc* FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *context)
{
    struct acpi_acad_softc *sc;
    device_t	dev;
    ACPI_HANDLE	h;
    int		newstatus;

    dev = context;
    sc = FUNC7(dev);
    h = FUNC6(dev);
    newstatus = -1;
    FUNC3(h, "_PSR", &newstatus);

    /* If status is valid and has changed, notify the system. */
    FUNC0(acad);
    if (newstatus != -1 && sc->status != newstatus) {
	sc->status = newstatus;
	FUNC1(acad);
	FUNC8(newstatus ? POWER_PROFILE_PERFORMANCE :
	    POWER_PROFILE_ECONOMY);
	FUNC2(dev, FUNC5(dev),
	    "%s Line\n", newstatus ? "On" : "Off");
	FUNC4("ACAD", h, newstatus);
    } else
	FUNC1(acad);
}