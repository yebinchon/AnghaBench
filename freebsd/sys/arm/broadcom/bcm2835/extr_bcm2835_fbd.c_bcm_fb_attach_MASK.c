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
struct bcmsc_softc {int fbswap; int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bootargs ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,char**,int) ; 
 int FUNC2 (struct bcmsc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmsc_softc*) ; 
 struct bcmsc_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char**,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	char bootargs[2048], *n, *p, *v;
	int err;
	phandle_t chosen;
	struct bcmsc_softc *sc;

	sc = FUNC4(dev);
	sc->dev = dev;

	/* Newer firmware versions needs an inverted color palette. */
	sc->fbswap = 0;
	chosen = FUNC0("/chosen");
	if (chosen != -1 &&
	    FUNC1(chosen, "bootargs", &bootargs, sizeof(bootargs)) > 0) {
		p = bootargs;
		while ((v = FUNC6(&p, " ")) != NULL) {
			if (*v == '\0')
				continue;
			n = FUNC6(&v, "=");
			if (FUNC5(n, "bcm2708_fb.fbswap") == 0 && v != NULL)
				if (*v == '1')
					sc->fbswap = 1;
                }
        }

	FUNC3(sc);

	err = FUNC2(sc);
	if (err)
		return (err);

	return (0);
}