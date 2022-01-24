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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct armada_thermal_softc {int /*<<< orphan*/  chip_temperature; int /*<<< orphan*/  temp_upd; int /*<<< orphan*/  temp_upd_mtx; int /*<<< orphan*/ * ctrl_res; int /*<<< orphan*/ * stat_res; TYPE_1__* tdata; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* tsen_init ) (struct armada_thermal_softc*) ;} ;
typedef  TYPE_1__ armada_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int CTRL_RID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int STAT_RID ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  armada_temp_update ; 
 scalar_t__ FUNC3 (struct armada_thermal_softc*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct armada_thermal_softc*) ; 
 struct armada_thermal_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct armada_thermal_softc*) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct armada_thermal_softc *sc;
	const armada_tdata_t *tdata;
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid_list *schildren;
	int timeout;
	int rid;

	sc = FUNC8(dev);

	/* Allocate CTRL and STAT register spaces */
	rid = STAT_RID;
	sc->stat_res = FUNC4(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (sc->stat_res == NULL) {
		FUNC11(dev,
		    "Could not allocate memory for the status register\n");
		return (ENXIO);
	}

	rid = CTRL_RID;
	sc->ctrl_res = FUNC4(dev, SYS_RES_MEMORY,
	    &rid, RF_ACTIVE);
	if (sc->ctrl_res == NULL) {
		FUNC11(dev,
		    "Could not allocate memory for the control register\n");
		FUNC5(dev, SYS_RES_MEMORY,
		    FUNC13(sc->stat_res), sc->stat_res);
		sc->stat_res = NULL;
		return (ENXIO);
	}

	/* Now initialize the sensor */
	tdata = sc->tdata;
	tdata->tsen_init(sc);
	/* Set initial temperature value */
	for (timeout = 1000; timeout > 0; timeout--) {
		if (FUNC3(sc, &sc->chip_temperature) == 0)
			break;
		FUNC0(10);
	}
	if (timeout <= 0) {
		FUNC5(dev, SYS_RES_MEMORY,
		    FUNC13(sc->stat_res), sc->stat_res);
		sc->stat_res = NULL;
		FUNC5(dev, SYS_RES_MEMORY,
		    FUNC13(sc->ctrl_res), sc->ctrl_res);
		sc->ctrl_res = NULL;
		return (ENXIO);
	}
	/* Initialize mutex */
	FUNC12(&sc->temp_upd_mtx, "Armada Thermal", NULL, MTX_DEF);
	/* Set up the temperature update callout */
	FUNC6(&sc->temp_upd, &sc->temp_upd_mtx, 0);
	/* Schedule callout */
	FUNC7(&sc->temp_upd, hz, armada_temp_update, sc);

	sctx = FUNC9(dev);
	schildren = FUNC2(FUNC10(dev));
	FUNC1(sctx, schildren, OID_AUTO, "temperature",
	    CTLFLAG_RD, &sc->chip_temperature, "SoC temperature");

	return (0);
}