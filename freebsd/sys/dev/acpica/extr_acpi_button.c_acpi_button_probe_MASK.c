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
struct acpi_button_softc {int fixed; void* button_type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 void* ACPI_POWER_BUTTON ; 
 void* ACPI_SLEEP_BUTTON ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  btn_ids ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct acpi_button_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
    struct acpi_button_softc *sc;
    char *str; 
    int rv;

    if (FUNC1("button"))
	return (ENXIO);
    rv = FUNC0(FUNC2(dev), dev, btn_ids, &str);
    if (rv > 0)
	return (ENXIO);
    
    sc = FUNC3(dev);
    if (FUNC5(str, "PNP0C0C") == 0) {
	FUNC4(dev, "Power Button");
	sc->button_type = ACPI_POWER_BUTTON;
    } else if (FUNC5(str, "ACPI_FPB") == 0) {
	FUNC4(dev, "Power Button (fixed)");
	sc->button_type = ACPI_POWER_BUTTON;
	sc->fixed = 1;
    } else if (FUNC5(str, "PNP0C0E") == 0) {
	FUNC4(dev, "Sleep Button");
	sc->button_type = ACPI_SLEEP_BUTTON;
    } else if (FUNC5(str, "ACPI_FSB") == 0) {
	FUNC4(dev, "Sleep Button (fixed)");
	sc->button_type = ACPI_SLEEP_BUTTON;
	sc->fixed = 1;
    }

    return (rv);
}