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
struct ccm_softc {int dummy; } ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,void**) ; 
 int FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ccm_softc*,char*) ; 
 scalar_t__ FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(struct ccm_softc *sc)
{
	phandle_t child, parent, root;
	int len;
	char *fdt_config, *name;

	root = FUNC1("/");
	len = 0;
	parent = root;

	/* Find 'clock_names' prop in the tree */
	for (child = FUNC0(parent); child != 0; child = FUNC5(child)) {

		/* Find a 'leaf'. Start the search from this node. */
		while (FUNC0(child)) {
			parent = child;
			child = FUNC0(child);
		}

		if (!FUNC6(child))
			continue;

		if ((len = FUNC3(child, "clock_names")) > 0) {
			len = FUNC3(child, "clock_names");
			FUNC2(child, "clock_names",
			    (void **)&fdt_config);

			while (len > 0) {
				name = fdt_config;
				fdt_config += FUNC8(name) + 1;
				len -= FUNC8(name) + 1;
				FUNC7(sc, name);
			}
		}

		if (FUNC5(child) == 0) {
			/* No more siblings. */
			child = parent;
			parent = FUNC4(child);
		}
	}

	return (0);
}