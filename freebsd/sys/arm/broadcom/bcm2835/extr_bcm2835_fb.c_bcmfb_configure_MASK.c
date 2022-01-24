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
struct bcmsc_softc {int initialized; unsigned int width; unsigned int height; int fbswap; int /*<<< orphan*/  va; } ;
typedef  int phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  cell ;
typedef  int /*<<< orphan*/  bootargs ;

/* Variables and functions */
 unsigned int FB_HEIGHT ; 
 unsigned int FB_WIDTH ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,void**,int) ; 
 scalar_t__ FUNC2 (int,char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bcmsc_softc bcmsc ; 
 int FUNC4 (int,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char**,char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(int flags)
{
	char bootargs[2048], *n, *p, *v;
	pcell_t cell;
	phandle_t chosen, display, root;
	struct bcmsc_softc *sc;

	sc = &bcmsc;
	if (sc->initialized)
		return (0);

	sc->width = 0;
	sc->height = 0;

	/*
	 * It seems there is no way to let syscons framework know
	 * that framebuffer resolution has changed. So just try
	 * to fetch data from FDT bootargs, FDT display data and
	 * finally go with defaults if everything else has failed.
	 */
	chosen = FUNC0("/chosen");
	if (chosen != -1 &&
	    FUNC2(chosen, "bootargs", &bootargs, sizeof(bootargs)) > 0) {
		p = bootargs;
		while ((v = FUNC6(&p, " ")) != NULL) {
			if (*v == '\0')
				continue;
			n = FUNC6(&v, "=");
			if (FUNC5(n, "bcm2708_fb.fbwidth") == 0 && v != NULL)
				sc->width = (unsigned int)FUNC7(v, NULL, 0);
			else if (FUNC5(n, "bcm2708_fb.fbheight") == 0 &&
			    v != NULL)
				sc->height = (unsigned int)FUNC7(v, NULL, 0);
			else if (FUNC5(n, "bcm2708_fb.fbswap") == 0 &&
			    v != NULL)
				if (*v == '1')
					sc->fbswap = 1;
		}
	}

	root = FUNC0("/");
	if ((root != -1) && 
	    (display = FUNC4(root, "broadcom,bcm2835-fb", 1))) {
		if (sc->width == 0) {
			if ((FUNC1(display, "broadcom,width",
			    &cell, sizeof(cell))) > 0)
				sc->width = cell;
		}

		if (sc->height == 0) {
			if ((FUNC1(display, "broadcom,height", 
			    &cell, sizeof(cell))) > 0)
				sc->height = cell;
		}
	}

	if (sc->width == 0)
		sc->width = FB_WIDTH;
	if (sc->height == 0)
		sc->height = FB_HEIGHT;

	FUNC3(0, &sc->va, 0);
	sc->initialized = 1;

	return (0);
}