#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct host1x_softc {int drm_inited; int /*<<< orphan*/  dev; TYPE_1__* tegra_drm; int /*<<< orphan*/  irq_hook; } ;
struct TYPE_2__ {int /*<<< orphan*/  drm_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_drm_driver ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct host1x_softc *sc;
	int rv;

	sc = arg;
	FUNC0(&sc->irq_hook);

	FUNC3(&tegra_drm_driver);
	rv = FUNC2(sc->dev, &sc->tegra_drm->drm_dev,
	    &tegra_drm_driver);
	if (rv != 0) {
		FUNC1(sc->dev, "drm_get_platform_dev(): %d\n", rv);
		return;
	}

	sc->drm_inited = 1;
}