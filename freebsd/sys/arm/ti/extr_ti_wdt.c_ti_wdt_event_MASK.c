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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ti_wdt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  TI_WDT_WLDR ; 
 int /*<<< orphan*/  TI_WDT_WTGR ; 
 int /*<<< orphan*/  TI_W_PEND_WTGR ; 
 unsigned int WD_INTERVAL ; 
 unsigned int WD_TO_1SEC ; 
 unsigned int WD_TO_NEVER ; 
 int /*<<< orphan*/  FUNC1 (struct ti_wdt_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_wdt_softc*) ; 
 int FUNC3 (struct ti_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ti_wdt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_wdt_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(void *arg, unsigned int cmd, int *error)
{
	struct ti_wdt_softc *sc;
	uint8_t s;
	uint32_t wldr;
	uint32_t ptv;

	sc = arg;
	FUNC1(sc);
	if (cmd == WD_TO_NEVER) {
		*error = 0;
		return;
	}
	FUNC0("cmd 0x%x\n", cmd);
	cmd &= WD_INTERVAL;
	if (cmd < WD_TO_1SEC) {
		*error = EINVAL;
		return;
	}
	s = 1 << (cmd - WD_TO_1SEC);
	FUNC0("seconds %u\n", s);
	/*
	 * Leave the pre-scaler with its default values:
	 * PTV = 0 == 2**0 == 1
	 * PRE = 1 (enabled)
	 *
	 * Compute the load register value assuming a 32kHz clock.
	 * See OVF_Rate in the WDT section of the AM335x TRM.
	 */
	ptv = 0;
	wldr = 0xffffffff - (s * (32768 / (1 << ptv))) + 1;
	FUNC0("wldr 0x%x\n", wldr);
	FUNC5(sc, TI_WDT_WLDR, wldr);
	/*
	 * Trigger a timer reload.
	 */
	FUNC5(sc, TI_WDT_WTGR,
	    FUNC3(sc, TI_WDT_WTGR) + 1);
	FUNC4(sc, TI_W_PEND_WTGR);
	FUNC2(sc);
	*error = 0;
}