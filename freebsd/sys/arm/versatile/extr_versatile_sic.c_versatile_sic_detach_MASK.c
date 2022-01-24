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
struct versatile_sic_softc {int /*<<< orphan*/  mtx; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * mem_res; scalar_t__ intrh; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct versatile_sic_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct		versatile_sic_softc *sc;

	sc = FUNC2(dev);

	if (sc->intrh)
		FUNC1(dev, sc->irq_res, sc->intrh);

	if (sc->mem_res == NULL)
		FUNC0(dev, SYS_RES_MEMORY,
			FUNC4(sc->mem_res), sc->mem_res);

	if (sc->irq_res == NULL)
		FUNC0(dev, SYS_RES_IRQ,
			FUNC4(sc->irq_res), sc->irq_res);

	FUNC3(&sc->mtx);

	return (0);

}