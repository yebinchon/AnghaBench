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
struct pinmux_softc {int dummy; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct pinmux_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct pinmux_softc*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(device_t dev, phandle_t cfgxref)
{
	struct pinmux_softc *sc;
	phandle_t node, cfgnode;
	int rv;

	sc = FUNC3(dev);
	cfgnode = FUNC1(cfgxref);


	for (node = FUNC0(cfgnode); node != 0; node = FUNC2(node)) {
		if (!FUNC4(node))
			continue;
		rv = FUNC5(sc, node);
	}
	return (0);
}