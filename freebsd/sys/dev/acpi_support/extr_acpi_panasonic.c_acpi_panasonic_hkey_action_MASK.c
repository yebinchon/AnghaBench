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
struct acpi_softc {int dummy; } ;
struct acpi_panasonic_softc {int /*<<< orphan*/  dev; } ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HKEY_GET ; 
 int HKEY_LCD_BRIGHTNESS_DIV ; 
 int /*<<< orphan*/  HKEY_SET ; 
 struct acpi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  panasonic ; 

__attribute__((used)) static void
FUNC7(struct acpi_panasonic_softc *sc, ACPI_HANDLE h,
    UINT32 key)
{
	struct acpi_softc *acpi_sc;
	int arg, max, min;

	acpi_sc = FUNC1(sc->dev);

	FUNC0(panasonic);
	switch (key) {
	case 1:
		/* Decrease LCD brightness. */
		FUNC4(h, HKEY_GET, &max);
		FUNC5(h, HKEY_GET, &min);
		FUNC3(h, HKEY_GET, &arg);
		arg -= max / HKEY_LCD_BRIGHTNESS_DIV;
		if (arg < min)
			arg = min;
		else if (arg > max)
			arg = max;
		FUNC3(h, HKEY_SET, &arg);
		break;
	case 2:
		/* Increase LCD brightness. */
		FUNC4(h, HKEY_GET, &max);
		FUNC5(h, HKEY_GET, &min);
		FUNC3(h, HKEY_GET, &arg);
		arg += max / HKEY_LCD_BRIGHTNESS_DIV;
		if (arg < min)
			arg = min;
		else if (arg > max)
			arg = max;
		FUNC3(h, HKEY_SET, &arg);
		break;
	case 4:
		/* Toggle sound mute. */
		FUNC6(h, HKEY_GET, &arg);
		if (arg)
			arg = 0;
		else
			arg = 1;
		FUNC6(h, HKEY_SET, &arg);
		break;
	case 7:
		/* Suspend. */
		FUNC2(acpi_sc);
		break;
	}
}