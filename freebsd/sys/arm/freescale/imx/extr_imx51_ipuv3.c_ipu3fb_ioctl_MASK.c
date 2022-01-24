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
typedef  int /*<<< orphan*/  video_adapter_t ;
typedef  int u_long ;
struct video_adapter_softc {int depth; int /*<<< orphan*/  fb_size; int /*<<< orphan*/  width; int /*<<< orphan*/  height; } ;
struct fbtype {int fb_depth; int fb_cmsize; int /*<<< orphan*/  fb_size; int /*<<< orphan*/  fb_width; int /*<<< orphan*/  fb_height; int /*<<< orphan*/  fb_type; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENODEV ; 
#define  FBIOGTYPE 129 
#define  FBIOSCURSOR 128 
 int /*<<< orphan*/  FBTYPE_PCIMISC ; 
 int FUNC0 (int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC1(video_adapter_t *adp, u_long cmd, caddr_t data)
{
	struct video_adapter_softc *sc;
	struct fbtype *fb;

	sc = (struct video_adapter_softc *)adp;

	switch (cmd) {
	case FBIOGTYPE:
		fb = (struct fbtype *)data;
		fb->fb_type = FBTYPE_PCIMISC;
		fb->fb_height = sc->height;
		fb->fb_width = sc->width;
		fb->fb_depth = sc->depth;
		if (sc->depth <= 1 || sc->depth > 8)
			fb->fb_cmsize = 0;
		else
			fb->fb_cmsize = 1 << sc->depth;
		fb->fb_size = sc->fb_size;
		break;
	case FBIOSCURSOR:
		return (ENODEV);
	default:
		return (FUNC0(adp, cmd, data));
	}

	return (0);
}