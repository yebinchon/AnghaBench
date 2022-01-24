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
struct padctl_softc {int /*<<< orphan*/  dev; } ;
struct padctl_port {int type; int internal; int enabled; int /*<<< orphan*/ * lane; int /*<<< orphan*/  idx; int /*<<< orphan*/  supply_vbus; int /*<<< orphan*/  companion; } ;
typedef  int /*<<< orphan*/  phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,void**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  PADCTL_PAD_HSIC ; 
 int /*<<< orphan*/  PADCTL_PAD_ULPI ; 
 int /*<<< orphan*/  PADCTL_PAD_USB2 ; 
#define  PADCTL_PORT_HSIC 131 
#define  PADCTL_PORT_ULPI 130 
#define  PADCTL_PORT_USB2 129 
#define  PADCTL_PORT_USB3 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct padctl_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct padctl_port* FUNC7 (struct padctl_softc*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (struct padctl_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct padctl_softc *sc, phandle_t node)
{

	struct padctl_port *port;
	char *name;
	int rv;

	name = NULL;
	rv = FUNC1(node, "name", (void **)&name);
	if (rv <= 0) {
		FUNC4(sc->dev, "Cannot read port name.\n");
		return (ENXIO);
	}

	port = FUNC7(sc, name);
	if (port == NULL) {
		FUNC4(sc->dev, "Unknown port: %s\n", name);
		rv = ENXIO;
		goto end;
	}

	if (port->type == PADCTL_PORT_USB3) {
		rv = FUNC0(node,  "nvidia,usb2-companion",
		   &(port->companion), sizeof(port->companion));
		if (rv <= 0) {
			FUNC4(sc->dev,
			    "Missing 'nvidia,usb2-companion' property "
			    "for port: %s\n", name);
			rv = ENXIO;
			goto end;
		}
	}

	if (FUNC2(node, "vbus-supply")) {
		rv = FUNC5(sc->dev, 0,
		    "vbus-supply", &port->supply_vbus);
		if (rv <= 0) {
			FUNC4(sc->dev,
			    "Cannot get 'vbus-supply' regulator "
			    "for port: %s\n", name);
			rv = ENXIO;
			goto end;
		}
	}

	if (FUNC2(node, "nvidia,internal"))
		port->internal = true;
	/* Find assigned lane */
	if (port->lane == NULL) {
		switch(port->type) {
		/* Routing is fixed for USB2, ULPI AND HSIC. */
		case PADCTL_PORT_USB2:
			port->lane = FUNC6(sc, PADCTL_PAD_USB2,
			    port->idx);
			break;
		case PADCTL_PORT_ULPI:
			port->lane = FUNC6(sc, PADCTL_PAD_ULPI,
			    port->idx);
			break;
		case PADCTL_PORT_HSIC:
			port->lane = FUNC6(sc, PADCTL_PAD_HSIC,
			    port->idx);
			break;
		case PADCTL_PORT_USB3:
			port->lane = FUNC8(sc, port->idx);
			break;
		}
	}
	if (port->lane == NULL) {
		FUNC4(sc->dev, "Cannot find lane for port: %s\n", name);
		rv = ENXIO;
		goto end;
	}
	port->enabled = true;
	rv = 0;
end:
	if (name != NULL)
		FUNC3(name);
	return (rv);
}