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
typedef  int /*<<< orphan*/  xref ;
struct am335x_lcd_softc {scalar_t__ sc_hdmi_framer; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  hdmi_xref ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 struct am335x_lcd_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(device_t dev)
{
	phandle_t node, xref;
	phandle_t endpoint;
	phandle_t hdmi_xref;
	struct am335x_lcd_softc *sc;

	sc = FUNC6(dev);
	node = FUNC8(dev);
	sc->sc_hdmi_framer = 0;

	/*
	 * Old FreeBSD way of referencing to HDMI framer
	 */
	if (FUNC1(node, "hdmi", &hdmi_xref, sizeof(hdmi_xref)) != -1) {
		sc->sc_hdmi_framer = hdmi_xref;
		return;
	}

	/*
	 * Use bindings described in Linux docs:
	 * bindings/media/video-interfaces.txt
	 * We assume that the only endpoint in LCDC node
	 * is HDMI framer.
	 */
	node = FUNC7(node, "port");

	/* No media bindings */
	if (node == 0)
		return;

	for (endpoint = FUNC0(node); endpoint != 0; endpoint = FUNC4(endpoint)) {
		if (FUNC1(endpoint, "remote-endpoint", &xref, sizeof(xref)) != -1) {
			/* port/port@0/endpoint@0 */
			node = FUNC2(xref);
			/* port/port@0 */
			node = FUNC3(node);
			/* port */
			node = FUNC3(node);
			/* actual owner of port, in our case HDMI framer */
			sc->sc_hdmi_framer = FUNC5(FUNC3(node));
			if (sc->sc_hdmi_framer != 0)
				return;
		}
	}
}