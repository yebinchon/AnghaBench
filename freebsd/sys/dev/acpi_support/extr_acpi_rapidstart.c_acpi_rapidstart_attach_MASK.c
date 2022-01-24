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
struct acpi_rapidstart_softc {int /*<<< orphan*/  sysctl_tree; int /*<<< orphan*/  sysctl_ctx; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  comment; int /*<<< orphan*/ * nodename; int /*<<< orphan*/ * setmethod; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* acpi_rapidstart_oids ; 
 struct acpi_rapidstart_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_acpi_rapidstart_gen_handler ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct acpi_rapidstart_softc *sc;
	int i;

	sc = FUNC2(dev);
	
	sc->sysctl_ctx = FUNC3(dev);
	sc->sysctl_tree = FUNC4(dev);
	for (i = 0 ; acpi_rapidstart_oids[i].nodename != NULL; i++){
		if (acpi_rapidstart_oids[i].setmethod != NULL) {
			FUNC0(FUNC3(dev),
			    FUNC1(FUNC4(dev)),
			    i, acpi_rapidstart_oids[i].nodename,
			    CTLTYPE_INT | CTLFLAG_RW,
			    dev, i, sysctl_acpi_rapidstart_gen_handler, "I",
			    acpi_rapidstart_oids[i].comment);
		} else {
			FUNC0(FUNC3(dev),
			    FUNC1(FUNC4(dev)),
			    i, acpi_rapidstart_oids[i].nodename,
			    CTLTYPE_INT | CTLFLAG_RD,
			    dev, i, sysctl_acpi_rapidstart_gen_handler, "I",
			    acpi_rapidstart_oids[i].comment);
		}
	}
	return (0);
}