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
typedef  int uint32_t ;
struct a10hdmi_softc {int /*<<< orphan*/  mode_hook; } ;
typedef  void* device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI_EVENT_CONNECTED ; 
 int /*<<< orphan*/  HDMI_HPD ; 
 int FUNC1 (struct a10hdmi_softc*,int /*<<< orphan*/ ) ; 
 int HPD_DET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct a10hdmi_softc* FUNC3 (void*) ; 
 int /*<<< orphan*/  hdmi_event ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct a10hdmi_softc *sc;
	device_t dev;
	uint32_t hpd;

	dev = arg;
	sc = FUNC3(dev);

	hpd = FUNC1(sc, HDMI_HPD);
	if ((hpd & HPD_DET) == HPD_DET)
		FUNC0(hdmi_event, dev, HDMI_EVENT_CONNECTED);

	FUNC2(&sc->mode_hook);
}