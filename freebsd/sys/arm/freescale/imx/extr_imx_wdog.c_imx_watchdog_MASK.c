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
typedef  unsigned long long u_int ;
struct imx_wdog_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 unsigned long long WD_INTERVAL ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct imx_wdog_softc*,unsigned long long) ; 

__attribute__((used)) static void
FUNC2(void *arg, u_int cmd, int *error)
{
	struct imx_wdog_softc *sc;
	u_int timeout;

	sc = arg;
	if (cmd == 0) {
		if (bootverbose)
			FUNC0(sc->sc_dev, "Can not be disabled.\n");
		*error = EOPNOTSUPP;
	} else {
		timeout = (u_int)((1ULL << (cmd & WD_INTERVAL)) / 1000000000U);
		if (FUNC1(sc, timeout) == 0)
			*error = 0;
	}
}