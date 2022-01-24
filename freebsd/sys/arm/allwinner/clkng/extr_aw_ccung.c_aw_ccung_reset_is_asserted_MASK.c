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
typedef  int uint32_t ;
struct aw_ccung_softc {intptr_t nresets; int /*<<< orphan*/  mtx; TYPE_1__* resets; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ offset; int shift; } ;

/* Variables and functions */
 int FUNC0 (struct aw_ccung_softc*,scalar_t__) ; 
 struct aw_ccung_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev, intptr_t id, bool *reset)
{
	struct aw_ccung_softc *sc;
	uint32_t val;

	sc = FUNC1(dev);

	if (id >= sc->nresets || sc->resets[id].offset == 0)
		return (0);

	FUNC3(&sc->mtx);
	val = FUNC0(sc, sc->resets[id].offset);
	FUNC2("offset=%x Read %x\n", sc->resets[id].offset, val);
	*reset = (val & (1 << sc->resets[id].shift)) != 0 ? false : true;
	FUNC4(&sc->mtx);

	return (0);
}