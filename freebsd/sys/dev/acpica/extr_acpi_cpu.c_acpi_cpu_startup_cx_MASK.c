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
struct acpi_cpu_softc {int /*<<< orphan*/  cpu_dev; int /*<<< orphan*/  cpu_sysctl_ctx; int /*<<< orphan*/  cpu_cx_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_cpu_softc*) ; 
 int /*<<< orphan*/  acpi_cpu_cx_lowest_sysctl ; 
 int /*<<< orphan*/  acpi_cpu_method_sysctl ; 
 int /*<<< orphan*/  acpi_cpu_usage_counters_sysctl ; 
 int /*<<< orphan*/  acpi_cpu_usage_sysctl ; 
 scalar_t__ cpu_cst_cnt ; 
 int /*<<< orphan*/  cpu_cx_generic ; 
 int /*<<< orphan*/  cpu_smi_cmd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct acpi_cpu_softc *sc)
{
    FUNC6(sc);
    
    FUNC4(&sc->cpu_sysctl_ctx,
		      FUNC5(FUNC7(sc->cpu_dev)),
		      OID_AUTO, "cx_supported", CTLFLAG_RD,
		      sc->cpu_cx_supported, 0,
		      "Cx/microsecond values for supported Cx states");
    FUNC3(&sc->cpu_sysctl_ctx,
		    FUNC5(FUNC7(sc->cpu_dev)),
		    OID_AUTO, "cx_lowest", CTLTYPE_STRING | CTLFLAG_RW,
		    (void *)sc, 0, acpi_cpu_cx_lowest_sysctl, "A",
		    "lowest Cx sleep state to use");
    FUNC3(&sc->cpu_sysctl_ctx,
		    FUNC5(FUNC7(sc->cpu_dev)),
		    OID_AUTO, "cx_usage", CTLTYPE_STRING | CTLFLAG_RD,
		    (void *)sc, 0, acpi_cpu_usage_sysctl, "A",
		    "percent usage for each Cx state");
    FUNC3(&sc->cpu_sysctl_ctx,
		    FUNC5(FUNC7(sc->cpu_dev)),
		    OID_AUTO, "cx_usage_counters", CTLTYPE_STRING | CTLFLAG_RD,
		    (void *)sc, 0, acpi_cpu_usage_counters_sysctl, "A",
		    "Cx sleep state counters");
#if defined(__i386__) || defined(__amd64__)
    FUNC3(&sc->cpu_sysctl_ctx,
		    FUNC5(FUNC7(sc->cpu_dev)),
		    OID_AUTO, "cx_method", CTLTYPE_STRING | CTLFLAG_RD,
		    (void *)sc, 0, acpi_cpu_method_sysctl, "A",
		    "Cx entrance methods");
#endif

    /* Signal platform that we can handle _CST notification. */
    if (!cpu_cx_generic && cpu_cst_cnt != 0) {
	FUNC0(acpi);
	FUNC2(cpu_smi_cmd, cpu_cst_cnt, 8);
	FUNC1(acpi);
    }
}