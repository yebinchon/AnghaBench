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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  sysctl_name ;
struct sysctl_oid {int dummy; } ;
struct aibs_softc {scalar_t__ sc_ggrp_method; int /*<<< orphan*/  sc_dev; } ;
struct aibs_sensor {scalar_t__ t; scalar_t__ h; scalar_t__ l; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 scalar_t__ AIBS_SENS_TYPE_TEMP ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,struct aibs_softc*,uintptr_t,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  aibs_sysctl ; 
 int /*<<< orphan*/  aibs_sysctl_ggrp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct aibs_softc *sc, struct sysctl_oid *so,
    const char *type_name, int idx, struct aibs_sensor *sensor,
    const char *descr)
{
	char	sysctl_name[8];

	FUNC4(sysctl_name, sizeof(sysctl_name), "%i", idx);
#ifdef AIBS_VERBOSE
	device_printf(sc->sc_dev, "%c%i: 0x%08jx %20s %5jd / %5jd\n",
	    type_name[0], idx,
	    (uintmax_t)sensor->i, descr, (intmax_t)sensor->l,
	    (intmax_t)sensor->h);
#endif
	FUNC0(FUNC2(sc->sc_dev),
	    FUNC1(so), idx, sysctl_name,
	    CTLTYPE_INT | CTLFLAG_RD, sc, (uintptr_t)sensor,
	    sc->sc_ggrp_method ? aibs_sysctl_ggrp : aibs_sysctl,
	    sensor->t == AIBS_SENS_TYPE_TEMP ? "IK" : "I", descr);
}