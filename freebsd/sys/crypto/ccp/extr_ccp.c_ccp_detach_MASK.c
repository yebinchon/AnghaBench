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
struct ccp_softc {int detaching; int hw_features; int /*<<< orphan*/  lock; int /*<<< orphan*/  cid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int VERSION_CAP_TRNG ; 
 int /*<<< orphan*/  FUNC0 (struct ccp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ccp_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ccp_softc* g_ccp_softc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  random_ccp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ccp_softc *sc;

	sc = FUNC3(dev);

	FUNC5(&sc->lock);
	sc->detaching = true;
	FUNC6(&sc->lock);

	FUNC2(sc->cid);
	if (g_ccp_softc == sc && (sc->hw_features & VERSION_CAP_TRNG) != 0)
		FUNC7(&random_ccp);

	FUNC1(dev);
	FUNC0(sc);

	if (g_ccp_softc == sc)
		g_ccp_softc = NULL;

	FUNC4(&sc->lock);
	return (0);
}