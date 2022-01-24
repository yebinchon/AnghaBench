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
struct tegra_drm {int dummy; } ;
struct dc_softc {int /*<<< orphan*/ * irq_ih; int /*<<< orphan*/  irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dc_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t host1x, struct tegra_drm *drm)
{
	struct dc_softc *sc;

	sc = FUNC1(dev);

	if (sc->irq_ih != NULL)
		FUNC0(dev, sc->irq_res, sc->irq_ih);
	sc->irq_ih = NULL;

	return (0);
}