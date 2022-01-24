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
struct bcm_vchiq_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  mem_res; int /*<<< orphan*/  irq_res; scalar_t__ intr_hl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct bcm_vchiq_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct bcm_vchiq_softc *sc = FUNC2(dev);

	FUNC4();

	if (sc->intr_hl)
                FUNC1(dev, sc->irq_res, sc->intr_hl);
	FUNC0(dev, SYS_RES_IRQ, 0,
		sc->irq_res);
	FUNC0(dev, SYS_RES_MEMORY, 0,
		sc->mem_res);

	FUNC3(&sc->lock);

	return (0);
}