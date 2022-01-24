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
struct cpswp_softc {int /*<<< orphan*/  lock; int /*<<< orphan*/  ifp; int /*<<< orphan*/  mii_callout; int /*<<< orphan*/  swsc; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpswp_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cpswp_softc*) ; 
 struct cpswp_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct cpswp_softc *sc;

	sc = FUNC6(dev);
	FUNC0(sc->swsc, (""));
	if (FUNC7(dev)) {
		FUNC8(sc->ifp);
		FUNC1(sc);
		FUNC5(sc);
		FUNC2(sc);
		FUNC4(&sc->mii_callout);
	}

	FUNC3(dev);

	FUNC9(sc->ifp);
	FUNC10(&sc->lock);

	return (0);
}