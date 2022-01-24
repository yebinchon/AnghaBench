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
struct acpi_toshiba_softc {int /*<<< orphan*/  dev; } ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_GET ; 
 int /*<<< orphan*/  HCI_REG_SYSTEM_EVENT ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_toshiba_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  toshiba ; 

__attribute__((used)) static void
FUNC6(ACPI_HANDLE h, UINT32 notify, void *context)
{
	struct		acpi_toshiba_softc *sc;
	UINT32		key;

	sc = (struct acpi_toshiba_softc *)context;

	if (notify == 0x80) {
		FUNC0(toshiba);
		while (FUNC4(h, HCI_GET, HCI_REG_SYSTEM_EVENT, &key) == 0) {
			FUNC5(sc, h, key);
			FUNC2("TOSHIBA", h, (uint8_t)key);
		}
		FUNC1(toshiba);
	} else
		FUNC3(sc->dev, "unknown notify: 0x%x\n", notify);
}