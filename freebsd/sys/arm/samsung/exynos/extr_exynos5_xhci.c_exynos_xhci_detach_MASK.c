#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ sc_intr_hdl; } ;
struct exynos_xhci_softc {TYPE_1__ base; scalar_t__* res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct exynos_xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  exynos_xhci_spec ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct exynos_xhci_softc *esc = FUNC3(dev);
	int err;

	/* During module unload there are lots of children leftover */
	FUNC2(dev);

	FUNC5(&esc->base);
	
	if (esc->res[2] && esc->base.sc_intr_hdl) {
		err = FUNC1(dev, esc->res[2],
		    esc->base.sc_intr_hdl);
		if (err) {
			FUNC4(dev, "Could not tear down IRQ,"
			    " %d\n", err);
			return (err);
		}
	}

	FUNC0(dev, exynos_xhci_spec, esc->res);

	FUNC6(&esc->base);
	
	return (0);
}