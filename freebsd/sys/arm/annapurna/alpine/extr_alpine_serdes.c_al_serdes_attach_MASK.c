#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct al_serdes_softc {int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int mode_set; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  al_serdes_spec ; 
 TYPE_1__* alpine_serdes_eth_group_mode ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct al_serdes_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* serdes_base ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct al_serdes_softc *sc;
	int err;

	sc = FUNC1(dev);

	err = FUNC0(dev, al_serdes_spec, &sc->res);
	if (err != 0) {
		FUNC2(dev, "could not allocate resources\n");
		return (err);
	}

	/* Initialize Serdes group locks and mode */
	for (int i = 0; i < FUNC4(alpine_serdes_eth_group_mode); i++) {
		FUNC3(&alpine_serdes_eth_group_mode[i].lock, "AlSerdesMtx",
		    NULL, MTX_DEF);
		alpine_serdes_eth_group_mode[i].mode_set = false;
	}

	serdes_base = (void *)FUNC5(sc->res);

	return (0);
}