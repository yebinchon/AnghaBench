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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct videomode {int /*<<< orphan*/  flags; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ hskew; int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct edid_info {struct videomode* edid_preferred_mode; } ;
struct a10fb_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FB_DEFAULT_H ; 
 int /*<<< orphan*/  FB_DEFAULT_REF ; 
 int /*<<< orphan*/  FB_DEFAULT_W ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HDMI_ENABLE_DELAY ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct videomode*) ; 
 int /*<<< orphan*/  VID_HSKEW ; 
 int FUNC4 (struct a10fb_softc*,struct videomode const*) ; 
 int /*<<< orphan*/  FUNC5 (struct a10fb_softc*,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct edid_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct edid_info*) ; 
 struct videomode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *arg, device_t hdmi_dev)
{
	const struct videomode *mode;
	struct videomode hdmi_mode;
	struct a10fb_softc *sc;
	struct edid_info ei;
	uint8_t *edid;
	uint32_t edid_len;
	int error;

	sc = arg;
	edid = NULL;
	edid_len = 0;
	mode = NULL;

	error = FUNC2(hdmi_dev, &edid, &edid_len);
	if (error != 0) {
		FUNC6(sc->dev, "failed to get EDID: %d\n", error);
	} else {
		error = FUNC7(edid, &ei);
		if (error != 0) {
			FUNC6(sc->dev, "failed to parse EDID: %d\n",
			    error);
		} else {
			if (bootverbose)
				FUNC8(&ei);
			mode = ei.edid_preferred_mode;
		}
	}

	/* If the preferred mode could not be determined, use the default */
	if (mode == NULL)
		mode = FUNC9(FB_DEFAULT_W, FB_DEFAULT_H,
		    FB_DEFAULT_REF);

	if (mode == NULL) {
		FUNC6(sc->dev, "failed to find usable video mode\n");
		return;
	}

	if (bootverbose)
		FUNC6(sc->dev, "using %dx%d\n",
		    mode->hdisplay, mode->vdisplay);

	/* Disable HDMI */
	FUNC1(hdmi_dev, 0);

	/* Disable timing controller */
	FUNC5(sc, 0);

	/* Configure DEBE and TCON */
	error = FUNC4(sc, mode);
	if (error != 0) {
		FUNC6(sc->dev, "failed to configure FB: %d\n", error);
		return;
	}

	hdmi_mode = *mode;
	hdmi_mode.hskew = mode->hsync_end - mode->hsync_start;
	hdmi_mode.flags |= VID_HSKEW;
	FUNC3(hdmi_dev, &hdmi_mode);

	/* Enable timing controller */
	FUNC5(sc, 1);

	FUNC0(HDMI_ENABLE_DELAY);

	/* Enable HDMI */
	FUNC1(hdmi_dev, 1);
}