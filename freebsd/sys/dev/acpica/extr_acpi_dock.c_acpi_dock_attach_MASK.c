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
struct acpi_dock_softc {int /*<<< orphan*/  sysctl_tree; int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  _uid; int /*<<< orphan*/  _bdn; int /*<<< orphan*/  _sta; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALL_NOTIFY ; 
 int /*<<< orphan*/  ACPI_DOCK_STATUS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_dock_notify_handler ; 
 int /*<<< orphan*/  acpi_dock_status_sysctl ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 struct acpi_dock_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dock ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct acpi_dock_softc *sc;
	ACPI_HANDLE	h;

	sc = FUNC9(dev);
	h = FUNC8(dev);
	if (sc == NULL || h == NULL)
		return (ENXIO);

	sc->status = ACPI_DOCK_STATUS_UNKNOWN;

	FUNC2(h, "_INI", NULL, NULL);

	FUNC0(dock);

	FUNC7(dev);

	/* Get the sysctl tree */
	sc->sysctl_ctx = FUNC10(dev);
	sc->sysctl_tree = FUNC11(dev);

	FUNC4(sc->sysctl_ctx,
		FUNC6(sc->sysctl_tree),
		OID_AUTO, "_sta", CTLFLAG_RD,
		&sc->_sta, 0, "Dock _STA");
	FUNC4(sc->sysctl_ctx,
		FUNC6(sc->sysctl_tree),
		OID_AUTO, "_bdn", CTLFLAG_RD,
		&sc->_bdn, 0, "Dock _BDN");
	FUNC4(sc->sysctl_ctx,
		FUNC6(sc->sysctl_tree),
		OID_AUTO, "_uid", CTLFLAG_RD,
		&sc->_uid, 0, "Dock _UID");
	FUNC5(sc->sysctl_ctx,
		FUNC6(sc->sysctl_tree),
		OID_AUTO, "status",
		CTLTYPE_INT|CTLFLAG_RW, dev, 0,
		acpi_dock_status_sysctl, "I",
		"Dock/Undock operation");

	FUNC1(dock);

	FUNC3(h, ACPI_ALL_NOTIFY,
				 acpi_dock_notify_handler, dev);

	return (0);
}