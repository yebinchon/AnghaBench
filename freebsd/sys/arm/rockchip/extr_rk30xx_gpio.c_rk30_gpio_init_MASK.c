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
struct gpio_ctrl_entry {int (* handler ) (scalar_t__,int /*<<< orphan*/ *,int) ;scalar_t__ compat; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  gpios ;

/* Variables and functions */
 int ENXIO ; 
 int GPIOS_PROP_CELLS ; 
 int MAX_PINS_PER_NODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  gpio_controllers ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(void)
{
	phandle_t child, parent, root, ctrl;
	pcell_t gpios[MAX_PINS_PER_NODE * GPIOS_PROP_CELLS];
	struct gpio_ctrl_entry *e;
	int len, rv;

	root = FUNC1("/");
	len = 0;
	parent = root;

	/* Traverse through entire tree to find nodes with 'gpios' prop */
	for (child = FUNC0(parent); child != 0; child = FUNC6(child)) {

		/* Find a 'leaf'. Start the search from this node. */
		while (FUNC0(child)) {
			parent = child;
			child = FUNC0(child);
		}
		if ((len = FUNC3(child, "gpios")) > 0) {

			if (len > sizeof(gpios))
				return (ENXIO);

			/* Get 'gpios' property. */
			FUNC2(child, "gpios", gpios, len);

			e = (struct gpio_ctrl_entry *)&gpio_controllers;

			/* Find and call a handler. */
			for (; e->compat; e++) {
				/*
				 * First cell of 'gpios' property should
				 * contain a ref. to a node defining GPIO
				 * controller.
				 */
				ctrl = FUNC4(gpios[0]);

				if (FUNC7(ctrl, e->compat))
					/* Call a handler. */
					if ((rv = e->handler(ctrl,
					    (pcell_t *)&gpios, len)))
						return (rv);
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