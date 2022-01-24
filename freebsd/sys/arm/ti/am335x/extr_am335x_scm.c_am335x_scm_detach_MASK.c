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
struct am335x_scm_softc {int /*<<< orphan*/ * sc_temp_oid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCM_BGAP_BGOFF ; 
 int /*<<< orphan*/  SCM_BGAP_CTRL ; 
 struct am335x_scm_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct am335x_scm_softc *sc;

	sc = FUNC0(dev);

	/* Remove temperature sysctl. */
	if (sc->sc_temp_oid != NULL)
		FUNC1(sc->sc_temp_oid, 1, 0);

	/* Stop the bandgap ADC. */
	FUNC2(SCM_BGAP_CTRL, SCM_BGAP_BGOFF);

	return (0);
}