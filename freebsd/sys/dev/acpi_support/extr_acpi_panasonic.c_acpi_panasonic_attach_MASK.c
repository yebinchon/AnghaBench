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
struct acpi_softc {int /*<<< orphan*/  acpi_sysctl_tree; } ;
struct acpi_panasonic_softc {int /*<<< orphan*/  handle; int /*<<< orphan*/  power_evh; int /*<<< orphan*/  sysctl_ctx; int /*<<< orphan*/  sysctl_tree; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_panasonic_softc*) ; 
 int CTLFLAG_ANYBODY ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct acpi_panasonic_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct acpi_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_panasonic_notify ; 
 int /*<<< orphan*/  acpi_panasonic_power_profile ; 
 int /*<<< orphan*/  acpi_panasonic_sysctl ; 
 struct acpi_panasonic_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  power_profile_change ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* sysctl_table ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct acpi_panasonic_softc *sc;
	struct acpi_softc *acpi_sc;
	ACPI_STATUS status;
	int i;

	sc = FUNC10(dev);
	sc->dev = dev;
	sc->handle = FUNC9(dev);

	acpi_sc = FUNC8(dev);

	/* Build sysctl tree */
	FUNC13(&sc->sysctl_ctx);
	sc->sysctl_tree = FUNC5(&sc->sysctl_ctx,
	    FUNC7(acpi_sc->acpi_sysctl_tree), OID_AUTO,
	    "panasonic", CTLFLAG_RD, 0, "");
	for (i = 0; sysctl_table[i].name != NULL; i++) {
		FUNC6(&sc->sysctl_ctx,
		    FUNC7(sc->sysctl_tree), OID_AUTO,
		    sysctl_table[i].name,
		    CTLTYPE_INT | CTLFLAG_RW | CTLFLAG_ANYBODY,
		    sc, i, acpi_panasonic_sysctl, "I", "");
	}

#if 0
	/* Activate hotkeys */
	status = AcpiEvaluateObject(sc->handle, "", NULL, NULL);
	if (ACPI_FAILURE(status)) {
		device_printf(dev, "enable FN keys failed\n");
		sysctl_ctx_free(&sc->sysctl_ctx);
		return (ENXIO);
	}
#endif

	/* Handle notifies */
	status = FUNC3(sc->handle, ACPI_DEVICE_NOTIFY,
	    acpi_panasonic_notify, sc);
	if (FUNC0(status)) {
		FUNC11(dev, "couldn't install notify handler - %s\n",
		    FUNC2(status));
		FUNC12(&sc->sysctl_ctx);
		return (ENXIO);
	}

	/* Install power profile event handler */
	sc->power_evh = FUNC4(power_profile_change,
	    acpi_panasonic_power_profile, sc->handle, 0);

	return (0);
}