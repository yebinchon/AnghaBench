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
struct iomux_softc {int last_gpregaddr; int /*<<< orphan*/ * mem_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
#define  IMXSOC_51 134 
#define  IMXSOC_53 133 
#define  IMXSOC_6DL 132 
#define  IMXSOC_6Q 131 
#define  IMXSOC_6S 130 
#define  IMXSOC_6SL 129 
#define  IMXSOC_6UL 128 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct iomux_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 () ; 
 struct iomux_softc* iomux_sc ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct iomux_softc * sc;
	int rid;

	sc = FUNC1(dev);
	sc->dev = dev;

	switch (FUNC5()) {
	case IMXSOC_51:
		sc->last_gpregaddr = 1 * sizeof(uint32_t);
		break;
	case IMXSOC_53:
		sc->last_gpregaddr = 2 * sizeof(uint32_t);
		break;
	case IMXSOC_6DL:
	case IMXSOC_6S:
	case IMXSOC_6SL:
	case IMXSOC_6Q:
		sc->last_gpregaddr = 13 * sizeof(uint32_t);
		break;
	case IMXSOC_6UL:
		sc->last_gpregaddr = 14 * sizeof(uint32_t);
		break;
	default:
		FUNC2(dev, "Unknown SoC type\n");
		return (ENXIO);
	}

	rid = 0;
	sc->mem_res = FUNC0(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->mem_res == NULL) {
		FUNC2(dev, "Cannot allocate memory resources\n");
		return (ENXIO);
	}

	iomux_sc = sc;

	/*
	 * Register as a pinctrl device, and call the convenience function that
	 * walks the entire device tree invoking FDT_PINCTRL_CONFIGURE() on any
	 * pinctrl-0 property cells whose xref phandle refers to a configuration
	 * that is a child node of our node in the tree.
	 *
	 * The pinctrl bindings documentation specifically mentions that the
	 * pinctrl device itself may have a pinctrl-0 property which contains
	 * static configuration to be applied at device init time.  The tree
	 * walk will automatically handle this for us when it passes through our
	 * node in the tree.
	 */
	FUNC4(dev, "fsl,pins");
	FUNC3(dev);

	return (0);
}