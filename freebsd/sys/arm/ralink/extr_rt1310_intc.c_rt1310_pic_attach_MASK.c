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
struct rt1310_intc_softc {int /*<<< orphan*/  dev; TYPE_1__* ri_isrcs; } ;
struct intr_pic {int dummy; } ;
struct TYPE_2__ {size_t ri_irq; int /*<<< orphan*/  ri_isrc; } ;

/* Variables and functions */
 int ENXIO ; 
 size_t INTC_NIRQS ; 
 intptr_t FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct rt1310_intc_softc*,int /*<<< orphan*/ ) ; 
 struct intr_pic* FUNC4 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt1310_intr ; 

__attribute__((used)) static int
FUNC6(struct rt1310_intc_softc *sc)
{
	struct intr_pic *pic;
	int error;
	uint32_t irq;
	const char *name;
	intptr_t xref;

	name = FUNC1(sc->dev);
	for (irq = 0; irq < INTC_NIRQS; irq++) {
		sc->ri_isrcs[irq].ri_irq = irq;

		error = FUNC2(&sc->ri_isrcs[irq].ri_isrc,
		    sc->dev, 0, "%s,%u", name, irq);
		if (error != 0)
			return (error);
	}

	xref = FUNC0(FUNC5(sc->dev));
	pic = FUNC4(sc->dev, xref);
	if (pic == NULL)
		return (ENXIO);

	return (FUNC3(sc->dev, xref, rt1310_intr, sc, 0));
}