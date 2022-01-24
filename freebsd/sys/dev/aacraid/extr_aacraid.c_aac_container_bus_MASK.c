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
struct aac_softc {int /*<<< orphan*/  aac_dev; int /*<<< orphan*/  aac_sim_tqh; } ;
struct aac_sim {int InitiatorBusId; int /*<<< orphan*/ * aac_cam; int /*<<< orphan*/ * sim_dev; struct aac_softc* aac_sc; int /*<<< orphan*/  BusType; scalar_t__ BusNumber; int /*<<< orphan*/  TargetsPerBus; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_MAX_CONTAINERS ; 
 int /*<<< orphan*/  CONTAINER_BUS ; 
 int /*<<< orphan*/  M_AACRAIDBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct aac_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct aac_sim*) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_sim*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  sim_link ; 

__attribute__((used)) static void
FUNC9(struct aac_softc *sc)
{
	struct aac_sim *sim;
	device_t child;

	sim =(struct aac_sim *)FUNC7(sizeof(struct aac_sim),
		M_AACRAIDBUF, M_NOWAIT | M_ZERO);
	if (sim == NULL) {
		FUNC3(sc->aac_dev,
	    	"No memory to add container bus\n");
		FUNC8("Out of memory?!");
	}
	child = FUNC2(sc->aac_dev, "aacraidp", -1);
	if (child == NULL) {
		FUNC3(sc->aac_dev,
	    	"device_add_child failed for container bus\n");
		FUNC6(sim, M_AACRAIDBUF);
		FUNC8("Out of memory?!");
	}

	sim->TargetsPerBus = AAC_MAX_CONTAINERS;
	sim->BusNumber = 0;
	sim->BusType = CONTAINER_BUS;
	sim->InitiatorBusId = -1;
	sim->aac_sc = sc;
	sim->sim_dev = child;
	sim->aac_cam = NULL;

	FUNC5(child, sim);
	FUNC4(child, "Container Bus");
	FUNC0(&sc->aac_sim_tqh, sim, sim_link);
	/*
	device_set_desc(child, aac_describe_code(aac_container_types,
			mir->MntTable[0].VolType));
	*/
	FUNC1(sc->aac_dev);
}