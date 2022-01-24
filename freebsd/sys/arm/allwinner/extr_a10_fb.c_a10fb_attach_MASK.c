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
struct a10fb_softc {int /*<<< orphan*/  hdmi_evh; int /*<<< orphan*/  res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct a10fb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a10fb_hdmi_event ; 
 int /*<<< orphan*/  a10fb_spec ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct a10fb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hdmi_event ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct a10fb_softc *sc;

	sc = FUNC2(dev);

	sc->dev = dev;

	if (FUNC1(dev, a10fb_spec, sc->res)) {
		FUNC3(dev, "cannot allocate resources for device\n");
		return (ENXIO);
	}

	sc->hdmi_evh = FUNC0(hdmi_event,
	    a10fb_hdmi_event, sc, 0);

	return (0);
}