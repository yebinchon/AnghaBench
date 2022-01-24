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
struct arm_gic_softc {int /*<<< orphan*/  gic_res; int /*<<< orphan*/ * gic_irqs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  arm_gic_spec ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arm_gic_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(device_t dev)
{
	struct arm_gic_softc *sc;

	sc = FUNC1(dev);

	if (sc->gic_irqs != NULL)
		FUNC2(sc->gic_irqs, M_DEVBUF);

	FUNC0(dev, arm_gic_spec, sc->gic_res);

	return (0);
}