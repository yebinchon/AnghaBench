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
struct rk30_gpio_softc {int sc_bank; int sc_gpio_npins; int /*<<< orphan*/  sc_mtx; void* sc_mem_res; void* sc_irq_res; int /*<<< orphan*/ * sc_busdev; TYPE_1__* sc_gpio_pins; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_caps; int /*<<< orphan*/  gp_name; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  RK30_GPIO_DEFAULT_CAPS ; 
 int RK30_GPIO_PINS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct rk30_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned long* rk30_gpio_base_addr ; 
 int /*<<< orphan*/  FUNC10 (struct rk30_gpio_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct rk30_gpio_softc* rk30_gpio_sc ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 unsigned long FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct rk30_gpio_softc *sc = FUNC3(dev);
	int i, rid;
	phandle_t gpio;
	unsigned long start;

	if (rk30_gpio_sc)
		return (ENXIO);
	sc->sc_dev = dev;
	FUNC7(&sc->sc_mtx, "rk30 gpio", "gpio", MTX_DEF);

	rid = 0;
	sc->sc_mem_res = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (!sc->sc_mem_res) {
		FUNC4(dev, "cannot allocate memory window\n");
		goto fail;
	}
	sc->sc_bst = FUNC13(sc->sc_mem_res);
	sc->sc_bsh = FUNC12(sc->sc_mem_res);
	/* Check the unit we are attaching by our base address. */
	sc->sc_bank = -1;
	start = FUNC14(sc->sc_mem_res);
	for (i = 0; i < FUNC8(rk30_gpio_base_addr); i++) {
		if (rk30_gpio_base_addr[i] == start) {
			sc->sc_bank = i;
			break;
		}
	}
	if (sc->sc_bank == -1) {
		FUNC4(dev,
		    "unsupported device unit (only GPIO0..3 are supported)\n");
		goto fail;
	}

	rid = 0;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE);
	if (!sc->sc_irq_res) {
		FUNC4(dev, "cannot allocate interrupt\n");
		goto fail;
	}

	/* Find our node. */
	gpio = FUNC9(sc->sc_dev);

	if (!FUNC0(gpio, "gpio-controller"))
		/* Node is not a GPIO controller. */
		goto fail;

	/* Initialize the software controlled pins. */
	for (i = 0; i < RK30_GPIO_PINS; i++) {
		FUNC15(sc->sc_gpio_pins[i].gp_name, GPIOMAXNAME,
		    "pin %d", i);
		sc->sc_gpio_pins[i].gp_pin = i;
		sc->sc_gpio_pins[i].gp_caps = RK30_GPIO_DEFAULT_CAPS;
		sc->sc_gpio_pins[i].gp_flags = FUNC10(sc, i);
	}
	sc->sc_gpio_npins = i;
	rk30_gpio_sc = sc;
	FUNC11();
	sc->sc_busdev = FUNC5(dev);
	if (sc->sc_busdev == NULL)
		goto fail;

	return (0);

fail:
	if (sc->sc_irq_res)
		FUNC2(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
	if (sc->sc_mem_res)
		FUNC2(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
	FUNC6(&sc->sc_mtx);

	return (ENXIO);
}