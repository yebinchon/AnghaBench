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
struct TYPE_2__ {void* ich_arg; int /*<<< orphan*/  ich_func; } ;
struct twl_vreg_softc {TYPE_1__ sc_init_hook; int /*<<< orphan*/  sc_vreg_list; int /*<<< orphan*/  sc_pdev; void* sc_dev; } ;
typedef  void* device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct twl_vreg_softc*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 struct twl_vreg_softc* FUNC4 (void*) ; 
 int /*<<< orphan*/  twl_vreg_init ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct twl_vreg_softc *sc;

	sc = FUNC4(dev);
	sc->sc_dev = dev;
	sc->sc_pdev = FUNC3(dev);

	FUNC1(sc);

	FUNC0(&sc->sc_vreg_list);

	/* We have to wait until interrupts are enabled. I2C read and write
	 * only works if the interrupts are available.
	 */
	sc->sc_init_hook.ich_func = twl_vreg_init;
	sc->sc_init_hook.ich_arg = dev;

	if (FUNC2(&sc->sc_init_hook) != 0)
		return (ENOMEM);

	return (0);
}