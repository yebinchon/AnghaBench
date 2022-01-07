
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pmu_softc {int * ih; int ** res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MAXCPU ;
 int MAX_RLEN ;
 int PMU_IESR_C ;
 scalar_t__ bus_alloc_resources (int ,int ,int **) ;
 int bus_setup_intr (int ,int *,int,int ,int *,int *,int *) ;
 scalar_t__* ccnt_hi ;
 int cp15_pminten_get () ;
 int cp15_pminten_set (int ) ;
 struct pmu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pmu_attched ;
 int pmu_intr ;
 int pmu_spec ;

__attribute__((used)) static int
pmu_attach(device_t dev)
{
 struct pmu_softc *sc;



 int err;
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, pmu_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 for (i = 0; i < MAX_RLEN; i++) {
  if (sc->res[i] == ((void*)0))
   break;

  err = bus_setup_intr(dev, sc->res[i], INTR_MPSAFE | INTR_TYPE_MISC,
      pmu_intr, ((void*)0), ((void*)0), &sc->ih[i]);
  if (err) {
   device_printf(dev, "Unable to setup interrupt handler.\n");
   return (ENXIO);
  }
 }
 return (0);
}
