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
struct intr_irqsrc {int dummy; } ;
struct al_msix_softc {int /*<<< orphan*/  msi_mtx; int /*<<< orphan*/ ** isrcs; int /*<<< orphan*/  irq_alloc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ERR_NOT_IN_MAP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct intr_irqsrc*) ; 
 struct al_msix_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int count,
    struct intr_irqsrc **srcs)
{
	struct al_msix_softc *sc;
	int i, pos;

	sc = FUNC1(dev);

	FUNC2(&sc->msi_mtx);

	pos = FUNC0(dev, *srcs);
	FUNC4(sc->irq_alloc, pos, count);
	for (i = 0; i < count; i++) {
		pos = FUNC0(dev, *srcs);
		if (pos != ERR_NOT_IN_MAP)
			sc->isrcs[pos] = NULL;
		srcs++;
	}

	FUNC3(&sc->msi_mtx);

	return (0);
}