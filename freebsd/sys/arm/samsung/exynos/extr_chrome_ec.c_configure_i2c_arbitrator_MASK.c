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
struct ec_softc {int have_arbitrator; int /*<<< orphan*/  ec_gpio; int /*<<< orphan*/  our_gpio; } ;
typedef  int phandle_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int,char*) ; 

__attribute__((used)) static void
FUNC3(struct ec_softc *sc)
{
	phandle_t arbitrator;

	/* TODO: look for compatible entry instead of hard-coded path */
	arbitrator = FUNC0("/i2c-arbitrator");
	if (arbitrator != -1 &&
	    FUNC2(arbitrator, "freebsd,our-gpio") &&
	    FUNC2(arbitrator, "freebsd,ec-gpio")) {
		sc->have_arbitrator = 1;
		FUNC1(arbitrator, "freebsd,our-gpio",
		    &sc->our_gpio, sizeof(sc->our_gpio));
		FUNC1(arbitrator, "freebsd,ec-gpio",
		    &sc->ec_gpio, sizeof(sc->ec_gpio));
	} else {
		sc->have_arbitrator = 0;
		sc->our_gpio = 0;
		sc->ec_gpio = 0;
	}
}