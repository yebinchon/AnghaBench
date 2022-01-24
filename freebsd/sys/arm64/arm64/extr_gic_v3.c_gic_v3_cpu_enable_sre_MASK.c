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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct gic_v3_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int ICC_SRE_EL1_SRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icc_sre_el1 ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct gic_v3_softc *sc)
{
	uint64_t sre;
	u_int cpuid;

	cpuid = FUNC0(cpuid);
	/*
	 * Set the SRE bit to enable access to GIC CPU interface
	 * via system registers.
	 */
	sre = FUNC1(icc_sre_el1);
	sre |= ICC_SRE_EL1_SRE;
	FUNC2(icc_sre_el1, sre);
	FUNC4();
	/*
	 * Now ensure that the bit is set.
	 */
	sre = FUNC1(icc_sre_el1);
	if ((sre & ICC_SRE_EL1_SRE) == 0) {
		/* We are done. This was disabled in EL2 */
		FUNC3(sc->dev, "ERROR: CPU%u cannot enable CPU interface "
		    "via system registers\n", cpuid);
		return (ENXIO);
	} else if (bootverbose) {
		FUNC3(sc->dev,
		    "CPU%u enabled CPU interface via system registers\n",
		    cpuid);
	}

	return (0);
}