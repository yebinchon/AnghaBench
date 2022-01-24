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
struct padctl_pad {int enabled; } ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (struct padctl_softc*,scalar_t__,struct padctl_pad*) ; 
 struct padctl_pad* FUNC8 (struct padctl_softc*,char*) ; 

__attribute__((used)) static int
FUNC9(struct padctl_softc *sc, phandle_t node)
{
	struct padctl_pad *pad;
	char *name;
	int rv;

	name = NULL;
	rv = FUNC1(node, "name", (void **)&name);
	if (rv <= 0) {
		FUNC4(sc->dev, "Cannot read pad name.\n");
		return (ENXIO);
	}
	pad = FUNC8(sc, name);
	if (pad == NULL) {
		FUNC4(sc->dev, "Unknown pad: %s\n", name);
		rv = ENXIO;
		goto end;
	}

	/* Read and process associated lanes. */
	node = FUNC5(node, "lanes");
	if (node <= 0) {
		FUNC4(sc->dev, "Cannot find regulators subnode\n");
		rv = ENXIO;
		goto end;
	}

	for (node = FUNC0(node); node != 0; node = FUNC2(node)) {
		if (!FUNC6(node))
			continue;

		rv = FUNC7(sc, node, pad);
		if (rv != 0)
			goto end;
	}
	pad->enabled = true;
	rv = 0;
end:
	if (name != NULL)
		FUNC3(name);
	return (rv);
}