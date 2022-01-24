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
typedef  int uint16_t ;
typedef  int u_int ;
struct imx_wdog_softc {int sc_timeout; int sc_pde_enabled; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct imx_wdog_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WDOG_CR_REG ; 
 int WDOG_CR_WDE ; 
 int WDOG_CR_WT_MASK ; 
 int WDOG_CR_WT_SHIFT ; 
 int WDOG_MCR_PDE ; 
 int /*<<< orphan*/  WDOG_MCR_REG ; 
 int /*<<< orphan*/  WDOG_SR_REG ; 
 int WDOG_SR_STEP1 ; 
 int WDOG_SR_STEP2 ; 
 int /*<<< orphan*/  FUNC1 (struct imx_wdog_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct imx_wdog_softc *sc, u_int timeout)
{
	uint16_t reg;

	if (timeout < 1 || timeout > 128)
		return (EINVAL);

	FUNC2(&sc->sc_mtx);
	if (timeout != sc->sc_timeout) {
		sc->sc_timeout = timeout;
		reg = FUNC0(sc, WDOG_CR_REG);
		reg &= ~WDOG_CR_WT_MASK;
		reg |= ((2 * timeout - 1) << WDOG_CR_WT_SHIFT);
		FUNC1(sc, WDOG_CR_REG, reg | WDOG_CR_WDE);
	}
	/* Refresh counter */
	FUNC1(sc, WDOG_SR_REG, WDOG_SR_STEP1);
	FUNC1(sc, WDOG_SR_REG, WDOG_SR_STEP2);
	/* Watchdog active, can disable rom-boot watchdog. */
	if (sc->sc_pde_enabled) {
		sc->sc_pde_enabled = false;
		reg = FUNC0(sc, WDOG_MCR_REG);
		FUNC1(sc, WDOG_MCR_REG, reg & ~WDOG_MCR_PDE);
	}
	FUNC3(&sc->sc_mtx);

	return (0);
}