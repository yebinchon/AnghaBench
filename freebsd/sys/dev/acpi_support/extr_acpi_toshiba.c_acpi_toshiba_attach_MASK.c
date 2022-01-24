#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct acpi_toshiba_softc {int /*<<< orphan*/  handle; int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  sysctl_tree; int /*<<< orphan*/  dev; } ;
struct acpi_softc {int /*<<< orphan*/  acpi_sysctl_tree; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_toshiba_softc*) ; 
 int CTLFLAG_ANYBODY ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  METHOD_HCI_ENABLE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct acpi_toshiba_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct acpi_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_toshiba_notify ; 
 int /*<<< orphan*/  acpi_toshiba_sysctl ; 
 struct acpi_toshiba_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ enable_fn_keys ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* sysctl_table ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct		acpi_toshiba_softc *sc;
	struct		acpi_softc *acpi_sc;
	ACPI_STATUS	status;
	int		i;

	sc = FUNC8(dev);
	sc->dev = dev;
	sc->handle = FUNC7(dev);

	acpi_sc = FUNC6(dev);
	FUNC11(&sc->sysctl_ctx);
	sc->sysctl_tree = FUNC3(&sc->sysctl_ctx,
	    FUNC5(acpi_sc->acpi_sysctl_tree), OID_AUTO,
	    "toshiba", CTLFLAG_RD, 0, "");

	for (i = 0; sysctl_table[i].name != NULL; i++) {
		FUNC4(&sc->sysctl_ctx,
		    FUNC5(sc->sysctl_tree), OID_AUTO,
		    sysctl_table[i].name,
		    CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
		    sc, i, acpi_toshiba_sysctl, "I", "");
	}

	if (enable_fn_keys != 0) {
		status = FUNC1(sc->handle, METHOD_HCI_ENABLE,
					    NULL, NULL);
		if (FUNC0(status)) {
			FUNC9(dev, "enable FN keys failed\n");
			FUNC10(&sc->sysctl_ctx);
			return (ENXIO);
		}
		FUNC2(sc->handle, ACPI_DEVICE_NOTIFY,
					 acpi_toshiba_notify, sc);
	}

	return (0);
}