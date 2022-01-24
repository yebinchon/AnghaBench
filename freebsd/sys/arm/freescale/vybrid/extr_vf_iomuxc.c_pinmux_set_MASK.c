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
typedef  int /*<<< orphan*/  uint32_t ;
struct iomuxc_softc {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int pcell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MAX_MUX_LEN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int*,int) ; 
 int FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct iomuxc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10(struct iomuxc_softc *sc)
{
	phandle_t child, parent, root;
	pcell_t iomux_config[MAX_MUX_LEN];
	int len;
	int values;
	int pin;
	int pin_cfg;
	int i;

	root = FUNC2("/");
	len = 0;
	parent = root;

	/* Find 'iomux_config' prop in the nodes */
	for (child = FUNC1(parent); child != 0; child = FUNC6(child)) {

		/* Find a 'leaf'. Start the search from this node. */
		while (FUNC1(child)) {
			parent = child;
			child = FUNC1(child);
		}

		if (!FUNC9(child))
			continue;

		if ((len = FUNC4(child, "iomux_config")) > 0) {
			FUNC3(child, "iomux_config", iomux_config, len);

			values = len / (sizeof(uint32_t));
			for (i = 0; i < values; i += 2) {
				pin = iomux_config[i];
				pin_cfg = iomux_config[i+1];
#if 0
				device_printf(sc->dev, "Set pin %d to 0x%08x\n",
				    pin, pin_cfg);
#endif
				FUNC7(sc, FUNC0(pin), pin_cfg);
			}
		}

		if (FUNC6(child) == 0) {
			/* No more siblings. */
			child = parent;
			parent = FUNC5(child);
		}
	}

	return (0);
}