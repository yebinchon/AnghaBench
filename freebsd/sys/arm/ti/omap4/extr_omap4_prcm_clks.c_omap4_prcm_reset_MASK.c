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
struct omap4_prcm_softc {int /*<<< orphan*/  sc_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRM_INSTANCE ; 
 int /*<<< orphan*/  PRM_RSTCTRL ; 
 int PRM_RSTCTRL_RESET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct omap4_prcm_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct omap4_prcm_softc *sc;
	
	sc = FUNC2(PRM_INSTANCE);
	if (sc == NULL)
		return;

	FUNC1(sc->sc_res, PRM_RSTCTRL,
	    FUNC0(sc->sc_res, PRM_RSTCTRL) | PRM_RSTCTRL_RESET);
	FUNC0(sc->sc_res, PRM_RSTCTRL);
}