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
struct vf_gpio_softc {int gpio_npins; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * res; int /*<<< orphan*/ * sc_busdev; TYPE_1__* gpio_pins; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int gp_pin; int /*<<< orphan*/  gp_name; int /*<<< orphan*/  gp_flags; int /*<<< orphan*/  gp_caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_CAPS ; 
 int ENXIO ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int NGPIO ; 
 int FUNC1 (struct vf_gpio_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct vf_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct vf_gpio_softc* gpio_sc ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  vf_gpio_spec ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct vf_gpio_softc *sc;
	int i;

	sc = FUNC5(dev);
	FUNC10(&sc->sc_mtx, FUNC4(dev), NULL, MTX_DEF);

	if (FUNC2(dev, vf_gpio_spec, sc->res)) {
		FUNC7(dev, "could not allocate resources\n");
		FUNC9(&sc->sc_mtx);
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC12(sc->res[0]);
	sc->bsh = FUNC11(sc->res[0]);

	gpio_sc = sc;

	sc->gpio_npins = NGPIO;

	for (i = 0; i < sc->gpio_npins; i++) {
		sc->gpio_pins[i].gp_pin = i;
		sc->gpio_pins[i].gp_caps = DEFAULT_CAPS;
		sc->gpio_pins[i].gp_flags =
		    (FUNC1(sc, FUNC0(i)) & (1 << (i % 32))) ?
		    GPIO_PIN_OUTPUT: GPIO_PIN_INPUT;
		FUNC13(sc->gpio_pins[i].gp_name, GPIOMAXNAME,
		    "vf_gpio%d.%d", FUNC6(dev), i);
	}

	sc->sc_busdev = FUNC8(dev);
	if (sc->sc_busdev == NULL) {
		FUNC3(dev, vf_gpio_spec, sc->res);
		FUNC9(&sc->sc_mtx);
		return (ENXIO);
	}

	return (0);
}