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
struct tegra124_coretemp_softc {int core_max_temp; int /*<<< orphan*/  cpu_id; int /*<<< orphan*/  dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CORETEMP_DELTA ; 
 int /*<<< orphan*/  CORETEMP_RESOLUTION ; 
 int /*<<< orphan*/  CORETEMP_TEMP ; 
 int /*<<< orphan*/  CORETEMP_TJMAX ; 
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  coretemp_get_val_sysctl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct tegra124_coretemp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct tegra124_coretemp_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct tegra124_coretemp_softc *sc;
	device_t pdev;
	struct sysctl_oid *oid;
	struct sysctl_ctx_list *ctx;
	int rv;

	sc = FUNC4(dev);
	sc->dev = dev;
	sc->cpu_id = FUNC7(dev);
	sc->core_max_temp = 102000;
	pdev = FUNC3(dev);

	rv = FUNC8(sc);
	if (rv != 0)
		return (rv);

	ctx = FUNC5(dev);

	oid = FUNC0(ctx,
	    FUNC2(FUNC6(pdev)), OID_AUTO,
	    "coretemp", CTLFLAG_RD, NULL, "Per-CPU thermal information");

	/*
	 * Add the MIBs to dev.cpu.N and dev.cpu.N.coretemp.
	 */
	FUNC1(ctx, FUNC2(FUNC6(pdev)),
	    OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
	    dev, CORETEMP_TEMP, coretemp_get_val_sysctl, "IK",
	    "Current temperature");
	FUNC1(ctx, FUNC2(oid), OID_AUTO, "delta",
	    CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_DELTA,
	    coretemp_get_val_sysctl, "I",
	    "Delta between TCC activation and current temperature");
	FUNC1(ctx, FUNC2(oid), OID_AUTO, "resolution",
	    CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_RESOLUTION,
	    coretemp_get_val_sysctl, "I",
	    "Resolution of CPU thermal sensor");
	FUNC1(ctx, FUNC2(oid), OID_AUTO, "tjmax",
	    CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_TJMAX,
	    coretemp_get_val_sysctl, "IK",
	    "TCC activation temperature");

	return (0);
}