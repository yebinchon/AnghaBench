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
struct tcon_softc {int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tcon_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tcon_softc* tcon_sc ; 
 int /*<<< orphan*/  tcon_spec ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct tcon_softc *sc;

	sc = FUNC1(dev);

	if (FUNC0(dev, tcon_spec, sc->res)) {
		FUNC2(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC4(sc->res[0]);
	sc->bsh = FUNC3(sc->res[0]);

	tcon_sc = sc;

	return (0);
}