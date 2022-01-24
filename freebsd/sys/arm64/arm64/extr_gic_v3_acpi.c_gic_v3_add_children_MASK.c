#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct gic_v3_softc {int /*<<< orphan*/  gic_nchildren; } ;
struct TYPE_5__ {int gic_domain; int /*<<< orphan*/  msi_xref; } ;
struct gic_v3_acpi_devinfo {TYPE_1__ di_gic_dinfo; int /*<<< orphan*/  di_rl; } ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_7__ {int /*<<< orphan*/  TranslationId; scalar_t__ BaseAddress; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef  TYPE_2__ ACPI_SUBTABLE_HEADER ;
typedef  TYPE_3__ ACPI_MADT_GENERIC_TRANSLATOR ;

/* Variables and functions */
 scalar_t__ ACPI_MADT_TYPE_GENERIC_TRANSLATOR ; 
 int /*<<< orphan*/  ACPI_MSI_XREF ; 
 int /*<<< orphan*/  M_GIC_V3 ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct gic_v3_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct gic_v3_acpi_devinfo*) ; 
 struct gic_v3_acpi_devinfo* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(ACPI_SUBTABLE_HEADER *entry, void *arg)
{
	ACPI_MADT_GENERIC_TRANSLATOR *gict;
	struct gic_v3_acpi_devinfo *di;
	struct gic_v3_softc *sc;
	device_t child, dev;
	u_int xref;
	int err, pxm;

	if (entry->Type == ACPI_MADT_TYPE_GENERIC_TRANSLATOR) {
		/* We have an ITS, add it as a child */
		gict = (ACPI_MADT_GENERIC_TRANSLATOR *)entry;
		dev = arg;
		sc = FUNC2(dev);

		child = FUNC1(dev, "its", -1);
		if (child == NULL)
			return;

		di = FUNC4(sizeof(*di), M_GIC_V3, M_WAITOK | M_ZERO);
		FUNC6(&di->di_rl);
		FUNC5(&di->di_rl, SYS_RES_MEMORY, 0,
		    gict->BaseAddress, gict->BaseAddress + 128 * 1024 - 1,
		    128 * 1024);
		err = FUNC0(gict->TranslationId, &xref, &pxm);
		if (err == 0) {
			di->di_gic_dinfo.gic_domain = pxm;
			di->di_gic_dinfo.msi_xref = xref;
		} else {
			di->di_gic_dinfo.gic_domain = -1;
			di->di_gic_dinfo.msi_xref = ACPI_MSI_XREF;
		}
		sc->gic_nchildren++;
		FUNC3(child, di);
	}
}