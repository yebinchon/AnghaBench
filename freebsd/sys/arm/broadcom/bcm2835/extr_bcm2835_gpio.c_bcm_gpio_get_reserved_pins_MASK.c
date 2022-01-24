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
struct bcm_gpio_softc {int /*<<< orphan*/  sc_dev; } ;
typedef  int ssize_t ;
typedef  scalar_t__ phandle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct bcm_gpio_softc*,scalar_t__,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(struct bcm_gpio_softc *sc)
{
	char *name;
	phandle_t gpio, node, reserved;
	ssize_t len;

	/* Get read-only pins if they're provided */
	gpio = FUNC5(sc->sc_dev);
	if (FUNC4(sc, gpio, "broadcom,read-only",
	    "read-only") != 0)
		return (0);
	/* Traverse the GPIO subnodes to find the reserved pins node. */
	reserved = 0;
	node = FUNC0(gpio);
	while ((node != 0) && (reserved == 0)) {
		len = FUNC1(node, "name", (void **)&name);
		if (len == -1)
			return (-1);
		if (FUNC6(name, "reserved") == 0)
			reserved = node;
		FUNC3(name);
		node = FUNC2(node);
	}
	if (reserved == 0)
		return (-1);
	/* Get the reserved pins. */
	if (FUNC4(sc, reserved, "broadcom,pins",
	    "reserved") != 0)
		return (-1);

	return (0);
}