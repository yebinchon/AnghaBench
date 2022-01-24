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
typedef  size_t u_int ;
struct am335x_ehrpwm_softc {size_t sc_clktick; TYPE_1__* sc_channels; } ;
struct TYPE_2__ {size_t duty; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPWM_CMPA ; 
 int /*<<< orphan*/  EPWM_CMPB ; 
 int /*<<< orphan*/  FUNC0 (struct am335x_ehrpwm_softc*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct am335x_ehrpwm_softc*) ; 
 size_t FUNC2 (int,size_t) ; 

__attribute__((used)) static void
FUNC3(struct am335x_ehrpwm_softc *sc, u_int chan, u_int duty)
{
	u_int tbcmp;

	if (duty == 0)
		tbcmp = 0;
	else
		tbcmp = FUNC2(1, duty / sc->sc_clktick);

	sc->sc_channels[chan].duty = tbcmp * sc->sc_clktick;

	FUNC1(sc);
	FUNC0(sc, (chan == 0) ? EPWM_CMPA : EPWM_CMPB, tbcmp);
}