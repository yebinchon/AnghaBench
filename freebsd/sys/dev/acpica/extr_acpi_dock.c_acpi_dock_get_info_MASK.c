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
struct acpi_dock_softc {void* _uid; void* _bdn; void* _sta; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 void* ACPI_DOCK_STATUS_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct acpi_dock_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct acpi_dock_softc *sc;
	ACPI_HANDLE	h;

	sc = FUNC5(dev);
	h = FUNC4(dev);

	if (FUNC0(FUNC2(h, "_STA", &sc->_sta)))
		sc->_sta = ACPI_DOCK_STATUS_UNKNOWN;
	if (FUNC0(FUNC2(h, "_BDN", &sc->_bdn)))
		sc->_bdn = ACPI_DOCK_STATUS_UNKNOWN;
	if (FUNC0(FUNC2(h, "_UID", &sc->_uid)))
		sc->_uid = ACPI_DOCK_STATUS_UNKNOWN;
	FUNC1(dev, FUNC3(dev),
		    "_STA: %04x, _BDN: %04x, _UID: %04x\n", sc->_sta,
		    sc->_bdn, sc->_uid);
}