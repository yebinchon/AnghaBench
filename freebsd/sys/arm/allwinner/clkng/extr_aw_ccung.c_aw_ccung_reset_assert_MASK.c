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
struct TYPE_2__ {char* offset; int shift; } ;

/* Variables and functions */
 int FUNC0 (struct aw_ccung_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct aw_ccung_softc*,char*,int) ; 
 struct aw_ccung_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, intptr_t id, bool reset)
{
	struct aw_ccung_softc *sc;
	uint32_t val;

	sc = FUNC2(dev);

	FUNC3("%sassert reset id %ld\n", reset ? "" : "De", id);
	if (id >= sc->nresets || sc->resets[id].offset == 0)
		return (0);

	FUNC4(&sc->mtx);
	val = FUNC0(sc, sc->resets[id].offset);
	FUNC3("offset=%x Read %x\n", sc->resets[id].offset, val);
	if (reset)
		val &= ~(1 << sc->resets[id].shift);
	else
		val |= 1 << sc->resets[id].shift;
	FUNC3("offset=%x Write %x\n", sc->resets[id].offset, val);
	FUNC1(sc, sc->resets[id].offset, val);
	FUNC5(&sc->mtx);

	return (0);
}