
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_softc {int aac_dev; int aac_sim_tqh; } ;
struct aac_sim {int InitiatorBusId; int * aac_cam; int * sim_dev; struct aac_softc* aac_sc; int BusType; scalar_t__ BusNumber; int TargetsPerBus; } ;
typedef int * device_t ;


 int AAC_MAX_CONTAINERS ;
 int CONTAINER_BUS ;
 int M_AACRAIDBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct aac_sim*,int ) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int *,char*) ;
 int device_set_ivars (int *,struct aac_sim*) ;
 int free (struct aac_sim*,int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int panic (char*) ;
 int sim_link ;

__attribute__((used)) static void
aac_container_bus(struct aac_softc *sc)
{
 struct aac_sim *sim;
 device_t child;

 sim =(struct aac_sim *)malloc(sizeof(struct aac_sim),
  M_AACRAIDBUF, M_NOWAIT | M_ZERO);
 if (sim == ((void*)0)) {
  device_printf(sc->aac_dev,
      "No memory to add container bus\n");
  panic("Out of memory?!");
 }
 child = device_add_child(sc->aac_dev, "aacraidp", -1);
 if (child == ((void*)0)) {
  device_printf(sc->aac_dev,
      "device_add_child failed for container bus\n");
  free(sim, M_AACRAIDBUF);
  panic("Out of memory?!");
 }

 sim->TargetsPerBus = AAC_MAX_CONTAINERS;
 sim->BusNumber = 0;
 sim->BusType = CONTAINER_BUS;
 sim->InitiatorBusId = -1;
 sim->aac_sc = sc;
 sim->sim_dev = child;
 sim->aac_cam = ((void*)0);

 device_set_ivars(child, sim);
 device_set_desc(child, "Container Bus");
 TAILQ_INSERT_TAIL(&sc->aac_sim_tqh, sim, sim_link);




 bus_generic_attach(sc->aac_dev);
}
