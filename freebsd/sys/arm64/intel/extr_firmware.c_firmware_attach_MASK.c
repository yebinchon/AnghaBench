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
struct firmware_softc {int /*<<< orphan*/  dev; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct firmware_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct firmware_softc *sc;
	phandle_t node;

	sc = FUNC4(dev);
	sc->dev = dev;

	node = FUNC5(dev);
	if (node == -1)
		return (ENXIO);

	FUNC7(dev, node);

	/*
	 * Allow devices to identify.
	 */
	FUNC3(dev);

	/*
	 * Now walk the OFW tree and attach top-level devices.
	 */
	for (node = FUNC0(node); node > 0; node = FUNC1(node))
		FUNC6(dev, node, 0, NULL, -1, NULL);

	return (FUNC2(dev));
}