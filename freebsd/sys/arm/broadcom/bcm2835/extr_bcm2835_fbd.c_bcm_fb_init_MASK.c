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
struct bcmsc_softc {int /*<<< orphan*/  dev; } ;
struct bcm2835_fb_config {scalar_t__ bpp; scalar_t__ yoffset; scalar_t__ xoffset; int /*<<< orphan*/  yres; int /*<<< orphan*/  vyres; int /*<<< orphan*/  xres; int /*<<< orphan*/  vxres; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FB_DEPTH ; 
 scalar_t__ FUNC0 (struct bcm2835_fb_config*) ; 
 scalar_t__ FUNC1 (struct bcm2835_fb_config*) ; 
 int FUNC2 (struct bcm2835_fb_config*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_fb_config*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct bcmsc_softc *sc, struct bcm2835_fb_config *fb)
{
	int err;

	err = 0;

	FUNC4(fb, 0, sizeof(*fb));
	if (FUNC1(fb) != 0)
		return (ENXIO);
	if (FUNC0(fb) != 0)
		return (ENXIO);
	if (fb->bpp < FB_DEPTH) {
		FUNC3(sc->dev, "changing fb bpp from %d to %d\n", fb->bpp, FB_DEPTH);
		fb->bpp = FB_DEPTH;
	} else
		FUNC3(sc->dev, "keeping existing fb bpp of %d\n", fb->bpp);

	fb->vxres = fb->xres;
	fb->vyres = fb->yres;
	fb->xoffset = fb->yoffset = 0;

	if ((err = FUNC2(fb)) != 0) {
		FUNC3(sc->dev, "bcm2835_mbox_fb_init failed, err=%d\n", err);
		return (ENXIO);
	}

	return (0);
}