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
typedef  int /*<<< orphan*/  uint8_t ;
struct acpi_panasonic_softc {int /*<<< orphan*/  dev; } ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_panasonic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_panasonic_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  panasonic ; 

__attribute__((used)) static void
FUNC6(ACPI_HANDLE h, UINT32 notify, void *context)
{
	struct acpi_panasonic_softc *sc;
	UINT32 key = 0;

	sc = (struct acpi_panasonic_softc *)context;

	switch (notify) {
	case 0x80:
		FUNC0(panasonic);
		if (FUNC4(sc, h, &key) == 0) {
			FUNC3(sc, h, key);
			FUNC2("Panasonic", h, (uint8_t)key);
		}
		FUNC1(panasonic);
		break;
	case 0x81:
		if (!bootverbose)
			break;
		/* FALLTHROUGH */
	default:
		FUNC5(sc->dev, "unknown notify: %#x\n", notify);
		break;
	}
}