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
struct sysctl_oid {int dummy; } ;
struct soctherm_softc {int ntsensors; TYPE_1__* tsensors; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct soctherm_softc*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _hw ; 
 int /*<<< orphan*/  soctherm_sysctl_ctx ; 
 int /*<<< orphan*/  soctherm_sysctl_temperature ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct soctherm_softc *sc)
{
	int i;
	struct sysctl_oid *oid, *tmp;

	FUNC4(&soctherm_sysctl_ctx);
	/* create node for hw.temp */
	oid = FUNC0(&soctherm_sysctl_ctx,
	    FUNC3(_hw), OID_AUTO, "temperature",
	    CTLFLAG_RD, NULL, "");
	if (oid == NULL)
		return (ENXIO);

	/* Add sensors */
	for (i = sc->ntsensors  - 1; i >= 0; i--) {
		tmp = FUNC1(&soctherm_sysctl_ctx,
		    FUNC2(oid), OID_AUTO, sc->tsensors[i].name,
		    CTLTYPE_INT | CTLFLAG_RD, sc, i,
		    soctherm_sysctl_temperature, "IK", "SoC Temperature");
		if (tmp == NULL)
			return (ENXIO);
	}

	return (0);
}