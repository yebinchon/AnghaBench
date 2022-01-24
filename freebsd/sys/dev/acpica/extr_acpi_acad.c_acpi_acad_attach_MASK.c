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
struct acpi_softc {int /*<<< orphan*/  acpi_sysctl_tree; int /*<<< orphan*/  acpi_sysctl_ctx; } ;
struct acpi_acad_softc {int status; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPIIO_ACAD_GET_STATUS ; 
 int /*<<< orphan*/  ACPI_ALL_NOTIFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  OSL_NOTIFY_HANDLER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_acad_init_acline ; 
 int /*<<< orphan*/  acpi_acad_ioctl ; 
 int /*<<< orphan*/  acpi_acad_notify_handler ; 
 int /*<<< orphan*/  acpi_acad_sysctl ; 
 struct acpi_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct acpi_acad_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
    struct acpi_acad_softc *sc;
    struct acpi_softc	   *acpi_sc;
    ACPI_HANDLE	handle;
    int		error;

    sc = FUNC7(dev);
    handle = FUNC5(dev);

    error = FUNC6(ACPIIO_ACAD_GET_STATUS, acpi_acad_ioctl, dev);
    if (error != 0)
	return (error);

    if (FUNC8(dev) == 0) {
	acpi_sc = FUNC4(dev);
	FUNC2(&acpi_sc->acpi_sysctl_ctx,
			FUNC3(acpi_sc->acpi_sysctl_tree),
			OID_AUTO, "acline", CTLTYPE_INT | CTLFLAG_RD,
			&sc->status, 0, acpi_acad_sysctl, "I", "");
    }

    /* Get initial status after whole system is up. */
    sc->status = -1;

    /*
     * Install both system and device notify handlers since the Casio
     * FIVA needs them.
     */
    FUNC0(handle, ACPI_ALL_NOTIFY,
			     acpi_acad_notify_handler, dev);
    FUNC1(OSL_NOTIFY_HANDLER, acpi_acad_init_acline, dev);

    return (0);
}