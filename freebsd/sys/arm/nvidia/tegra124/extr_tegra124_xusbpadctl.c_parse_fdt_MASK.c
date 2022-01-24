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
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct padctl_softc*,scalar_t__) ; 
 int FUNC6 (struct padctl_softc*,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct padctl_softc *sc, phandle_t base_node)
{
	phandle_t node;
	int rv;

	rv = 0;
	node = FUNC3(base_node, "pads");

	if (node <= 0) {
		FUNC2(sc->dev, "Cannot find pads subnode.\n");
		return (ENXIO);
	}
	for (node = FUNC0(node); node != 0; node = FUNC1(node)) {
		if (!FUNC4(node))
			continue;
		rv = FUNC5(sc, node);
		if (rv != 0)
			return (rv);
	}

	node = FUNC3(base_node, "ports");
	if (node <= 0) {
		FUNC2(sc->dev, "Cannot find ports subnode.\n");
		return (ENXIO);
	}
	for (node = FUNC0(node); node != 0; node = FUNC1(node)) {
		if (!FUNC4(node))
			continue;
		rv = FUNC6(sc, node);
		if (rv != 0)
			return (rv);
	}

	return (0);
}