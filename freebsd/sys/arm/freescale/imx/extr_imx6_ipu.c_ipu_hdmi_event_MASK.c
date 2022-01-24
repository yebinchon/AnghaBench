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
struct videomode {int dummy; } ;
struct ipu_softc {int /*<<< orphan*/ * sc_mode; int /*<<< orphan*/  sc_dev; } ;
struct edid_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct edid_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct edid_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipu_softc*) ; 
 int /*<<< orphan*/  mode1024x768 ; 

__attribute__((used)) static void
FUNC6(void *arg, device_t hdmi_dev)
{
	struct ipu_softc *sc;
	uint8_t *edid;
	uint32_t edid_len;
#ifdef EDID_DEBUG
	struct edid_info ei;
#endif
	const struct videomode *videomode;

	sc = arg;

	edid = NULL;
	edid_len = 0;
	if (FUNC0(hdmi_dev, &edid, &edid_len) != 0) {
		FUNC2(sc->sc_dev, "failed to get EDID info from HDMI framer\n");
	}

	videomode = NULL;

#ifdef EDID_DEBUG
	if ( edid && (edid_parse(edid, &ei) == 0)) {
		edid_print(&ei);
	} else
		device_printf(sc->sc_dev, "failed to parse EDID\n");
#endif

	sc->sc_mode = &mode1024x768;
	FUNC5(sc);

	FUNC1(hdmi_dev, sc->sc_mode);
}