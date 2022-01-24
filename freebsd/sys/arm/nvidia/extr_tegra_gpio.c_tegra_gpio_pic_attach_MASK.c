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
typedef  size_t uint32_t ;
struct tegra_gpio_softc {int gpio_npins; int /*<<< orphan*/  dev; TYPE_1__* isrcs; } ;
struct TYPE_2__ {size_t irq; int /*<<< orphan*/  isrc; scalar_t__ cfgreg; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct tegra_gpio_softc *sc)
{
	int error;
	uint32_t irq;
	const char *name;

	sc->isrcs = FUNC4(sizeof(*sc->isrcs) * sc->gpio_npins, M_DEVBUF,
	    M_WAITOK | M_ZERO);

	name = FUNC1(sc->dev);
	for (irq = 0; irq < sc->gpio_npins; irq++) {
		sc->isrcs[irq].irq = irq;
		sc->isrcs[irq].cfgreg = 0;
		error = FUNC2(&sc->isrcs[irq].isrc,
		    sc->dev, 0, "%s,%u", name, irq);
		if (error != 0)
			return (error); /* XXX deregister ISRCs */
	}
	if (FUNC3(sc->dev,
	    FUNC0(FUNC5(sc->dev))) == NULL)
		return (ENXIO);

	return (0);
}