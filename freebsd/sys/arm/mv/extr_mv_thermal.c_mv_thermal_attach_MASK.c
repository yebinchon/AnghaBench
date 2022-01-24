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
struct mv_thermal_softc {int cur_sensor; struct mv_thermal_config* config; int /*<<< orphan*/ * syscon; int /*<<< orphan*/  dev; int /*<<< orphan*/  mtx; } ;
struct mv_thermal_config {int type; int ncpus; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
#define  MV_AP806 129 
#define  MV_CP110 128 
 int /*<<< orphan*/  OID_AUTO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mv_thermal_softc*) ; 
 int /*<<< orphan*/  compat_data ; 
 int /*<<< orphan*/  FUNC4 (struct mv_thermal_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mv_thermal_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mv_thermal_sysctl ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct mv_thermal_softc *sc;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *oid;
	phandle_t node;
	char name[255];
	char desc[255];
	int i;

	sc = FUNC6(dev);
	sc->dev = dev;
	node = FUNC11(dev);

	sc->config = (struct mv_thermal_config *)
	    FUNC12(dev, compat_data)->ocd_data;

	FUNC10(&sc->mtx, FUNC5(dev), NULL, MTX_DEF);


	if (FUNC0(sc->dev, &sc->syscon) != 0 ||
	    sc->syscon == NULL) {
		FUNC9(dev, "cannot get syscon for device\n");
		return (ENXIO);
	}

	sc->cur_sensor = -1;
	switch (sc->config->type) {
	case MV_AP806:
		FUNC3(sc);
		break;
	case MV_CP110:
		FUNC4(sc);
		break;
	}

	ctx = FUNC7(dev);
	oid = FUNC2(FUNC8(dev));
	/* There is always at least one sensor */
	FUNC1(ctx, oid, OID_AUTO, "internal",
	    CTLTYPE_INT | CTLFLAG_RD,
	    dev, 0, mv_thermal_sysctl,
	    "IK",
	    "Internal Temperature");

	for (i = 0; i < sc->config->ncpus; i++) {
		FUNC13(name, sizeof(name), "cpu%d", i);
		FUNC13(desc, sizeof(desc), "CPU%d Temperature", i);
		FUNC1(ctx, oid, OID_AUTO, name,
		    CTLTYPE_INT | CTLFLAG_RD,
		    dev, i + 1, mv_thermal_sysctl,
		    "IK",
		    desc);
	}

	return (0);
}