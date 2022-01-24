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
typedef  int u_int ;
struct rk30_wd_softc {int freq; int /*<<< orphan*/  mtx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rk30_wd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WDOG_CRR ; 
 int WDOG_CRR_PWD ; 
 int /*<<< orphan*/  WDOG_CTRL ; 
 int WDOG_CTRL_EN ; 
 int WDOG_CTRL_RSP_MODE ; 
 int WDOG_CTRL_RST ; 
 int WDOG_CTRL_RST_PULSE ; 
 int /*<<< orphan*/  WDOG_TORR ; 
 int WDOG_TORR_INTVL_SHIFT ; 
 int WD_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *private, u_int cmd, int *error)
{
	struct rk30_wd_softc *sc;
	uint64_t ms, m, max;
	int i;

	sc = private;
	FUNC2(&sc->mtx);

	cmd &= WD_INTERVAL;

	if (cmd > 0) {
		ms = ((uint64_t)1 << (cmd & WD_INTERVAL)) / 1000000;
		m = 0xffff / sc->freq;
		max = 0x7fffffff / sc->freq + 1;
		i = 0;
		while (m < max && m < ms) {
			m <<= 1;
			i++;
		}
		if (m < max) {
			FUNC0(sc, WDOG_TORR,
			    i << WDOG_TORR_INTVL_SHIFT);
			FUNC0(sc, WDOG_CTRL,
			    WDOG_CTRL_EN | WDOG_CTRL_RSP_MODE |
			    WDOG_CTRL_RST_PULSE);
			FUNC0(sc, WDOG_CRR, WDOG_CRR_PWD);
			*error = 0;
		} else {
			FUNC1(sc->dev, "Can not be disabled\n");
			FUNC3(&sc->mtx);
			FUNC0(sc, WDOG_CTRL, WDOG_CTRL_RST);
			return;
		}
	}
	else
		FUNC0(sc, WDOG_CTRL, WDOG_CTRL_RST);

	FUNC3(&sc->mtx);
}