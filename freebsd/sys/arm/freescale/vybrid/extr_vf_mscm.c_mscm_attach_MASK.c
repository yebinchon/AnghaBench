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
struct mscm_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VF_NINT ; 
 int /*<<< orphan*/  FUNC1 (struct mscm_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mscm_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mscm_spec ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct mscm_softc *sc;
	int i;

	sc = FUNC3(dev);

	if (FUNC2(dev, mscm_spec, sc->res)) {
		FUNC4(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC6(sc->res[0]);
	sc->bsh = FUNC5(sc->res[0]);

	/* Route all the interrupts to CP0 */
	for (i = 0; i < VF_NINT; i++)
		FUNC1(sc, FUNC0(i), 1);

	return (0);
}