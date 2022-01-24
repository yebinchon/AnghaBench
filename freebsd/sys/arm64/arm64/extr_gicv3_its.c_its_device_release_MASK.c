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
struct TYPE_2__ {scalar_t__ lpi_busy; int /*<<< orphan*/  lpi_num; int /*<<< orphan*/  lpi_base; } ;
struct its_dev {scalar_t__ itt; TYPE_1__ lpis; int /*<<< orphan*/  itt_size; } ;
struct gicv3_its_softc {int /*<<< orphan*/  sc_irq_alloc; int /*<<< orphan*/  sc_its_dev_lock; int /*<<< orphan*/  sc_its_dev_list; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_GICV3_ITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct its_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gicv3_its_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC4 (struct its_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct its_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(device_t dev, struct its_dev *its_dev)
{
	struct gicv3_its_softc *sc;

	FUNC0(its_dev->lpis.lpi_busy == 0,
	    ("its_device_release: Trying to release an inuse ITS device"));

	/* Unmap device in ITS */
	FUNC5(dev, its_dev, 0);

	sc = FUNC3(dev);

	/* Remove the device from the list of devices */
	FUNC6(&sc->sc_its_dev_lock);
	FUNC1(&sc->sc_its_dev_list, its_dev, entry);
	FUNC7(&sc->sc_its_dev_lock);

	/* Free ITT */
	FUNC0(its_dev->itt != 0, ("Invalid ITT in valid ITS device"));
	FUNC2((void *)its_dev->itt, its_dev->itt_size, M_GICV3_ITS);

	/* Free the IRQ allocation */
	FUNC8(sc->sc_irq_alloc, its_dev->lpis.lpi_base,
	    its_dev->lpis.lpi_num);

	FUNC4(its_dev, M_GICV3_ITS);
}