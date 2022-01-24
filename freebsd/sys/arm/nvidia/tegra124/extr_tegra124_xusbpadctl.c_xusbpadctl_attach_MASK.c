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
struct padctl_softc {int /*<<< orphan*/  rst; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; } ;
struct padctl_port {int (* init ) (struct padctl_softc*,struct padctl_port*) ;int name; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct padctl_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct padctl_softc*) ; 
 int FUNC6 (struct padctl_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct padctl_softc*,int /*<<< orphan*/ ) ; 
 struct padctl_port* ports_tbl ; 
 int FUNC9 (struct padctl_softc*,struct padctl_port*) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct padctl_softc * sc;
	int i, rid, rv;
	struct padctl_port *port;
	phandle_t node;

	sc = FUNC1(dev);
	sc->dev = dev;
	node = FUNC7(dev);

	rid = 0;
	sc->mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	rv = FUNC4(dev, 0, "padctl", &sc->rst);
	if (rv != 0) {
		FUNC2(dev, "Cannot get 'padctl' reset: %d\n", rv);
		return (rv);
	}
	rv = FUNC3(sc->rst);
	if (rv != 0) {
		FUNC2(dev, "Cannot unreset 'padctl' reset: %d\n", rv);
		return (rv);
	}

	FUNC5(sc);

	rv = FUNC8(sc, node);
	if (rv != 0) {
		FUNC2(dev, "Cannot parse fdt configuration: %d\n", rv);
		return (rv);
	}
	for (i = 0; i < FUNC6(ports_tbl); i++) {
		port = ports_tbl + i;
		if (!port->enabled)
			continue;
		if (port->init == NULL)
			continue;
		rv = port->init(sc, port);
		if (rv != 0) {
			FUNC2(dev, "Cannot init port '%s'\n",
			    port->name);
			return (rv);
		}
	}
	return (0);
}