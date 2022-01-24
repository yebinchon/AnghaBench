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
struct zy7_devcfg_softc {int is_open; int /*<<< orphan*/  dma_tag; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  dev; int /*<<< orphan*/ * dma_map; } ;
struct thread {int dummy; } ;
struct cdev {struct zy7_devcfg_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC0 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_devcfg_softc*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
	struct zy7_devcfg_softc *sc = dev->si_drv1;
	int err;

	FUNC0(sc);
	if (sc->is_open) {
		FUNC1(sc);
		return (EBUSY);
	}

	sc->dma_map = NULL;
	err = FUNC2(FUNC3(sc->dev), 4, 0,
				 BUS_SPACE_MAXADDR_32BIT,
				 BUS_SPACE_MAXADDR,
				 NULL, NULL,
				 PAGE_SIZE,
				 1,
				 PAGE_SIZE,
				 0,
				 busdma_lock_mutex,
				 &sc->sc_mtx,
				 &sc->dma_tag);
	if (err) {
		FUNC1(sc);
		return (err);
	}

	sc->is_open = 1;
	FUNC1(sc);
	return (0);
}