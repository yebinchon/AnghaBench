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
typedef  size_t u_int ;
struct tzic_softc {int /*<<< orphan*/  dev; TYPE_1__* isrcs; } ;
struct intr_pic {int dummy; } ;
struct TYPE_2__ {size_t irq; int /*<<< orphan*/  isrc; } ;

/* Variables and functions */
 int ENXIO ; 
 intptr_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t TZIC_NIRQS ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,intptr_t,int /*<<< orphan*/ ,struct tzic_softc*,int /*<<< orphan*/ ) ; 
 struct intr_pic* FUNC4 (int /*<<< orphan*/ ,intptr_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tzic_intr ; 

__attribute__((used)) static int
FUNC6(struct tzic_softc *sc)
{
	struct intr_pic *pic;
	const char *name;
	intptr_t xref;
	int error;
	u_int irq;

	name = FUNC1(sc->dev);
	for (irq = 0; irq < TZIC_NIRQS; irq++) {
		sc->isrcs[irq].irq = irq;
		error = FUNC2(&sc->isrcs[irq].isrc,
		    sc->dev, 0, "%s,%u", name, irq);
		if (error != 0)
			return (error);
	}

	xref = FUNC0(FUNC5(sc->dev));
	pic = FUNC4(sc->dev, xref);
	if (pic == NULL)
		return (ENXIO);

	return (FUNC3(sc->dev, xref, tzic_intr, sc, 0));
}