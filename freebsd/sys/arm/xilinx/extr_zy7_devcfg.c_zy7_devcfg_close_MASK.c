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
struct zy7_devcfg_softc {int /*<<< orphan*/  dma_tag; scalar_t__ is_open; } ;
struct thread {int dummy; } ;
struct cdev {struct zy7_devcfg_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct zy7_devcfg_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zy7_en_level_shifters ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
	struct zy7_devcfg_softc *sc = dev->si_drv1;

	FUNC0(sc);
	sc->is_open = 0;
	FUNC2(sc->dma_tag);
	FUNC1(sc);

	FUNC3(zy7_en_level_shifters);

	return (0);
}