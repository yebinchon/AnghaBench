
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {char* et_name; int et_flags; int et_quality; int et_frequency; int et_min_period; int et_max_period; struct epit_softc* et_priv; int et_stop; int et_start; } ;
struct epit_softc {int clkfreq; TYPE_1__ et; int ctlreg; int dev; int inthandle; int * intres; } ;


 int ENXIO ;
 int EPIT_CR_OCIEN ;
 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERIODIC ;
 scalar_t__ ET_MAX_TICKS ;
 scalar_t__ ET_MIN_TICKS ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CLK ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int ,int *,struct epit_softc*,int *) ;
 int device_printf (int ,char*) ;
 int epit_et_start ;
 int epit_et_stop ;
 int epit_intr ;
 int et_register (TYPE_1__*) ;

__attribute__((used)) static int
epit_et_attach(struct epit_softc *sc)
{
 int err, rid;

 rid = 0;
 sc->intres = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->intres == ((void*)0)) {
  device_printf(sc->dev, "could not allocate interrupt\n");
  return (ENXIO);
 }

 err = bus_setup_intr(sc->dev, sc->intres, INTR_TYPE_CLK | INTR_MPSAFE,
     epit_intr, ((void*)0), sc, &sc->inthandle);
 if (err != 0) {
  device_printf(sc->dev, "unable to setup the irq handler\n");
  return (err);
 }


 sc->ctlreg |= EPIT_CR_OCIEN;


 sc->et.et_name = "EPIT";
 sc->et.et_flags = ET_FLAGS_ONESHOT | ET_FLAGS_PERIODIC;
 sc->et.et_quality = 1000;
 sc->et.et_frequency = sc->clkfreq;
 sc->et.et_min_period = ((uint64_t)ET_MIN_TICKS << 32) / sc->clkfreq;
 sc->et.et_max_period = ((uint64_t)ET_MAX_TICKS << 32) / sc->clkfreq;
 sc->et.et_start = epit_et_start;
 sc->et.et_stop = epit_et_stop;
 sc->et.et_priv = sc;
 et_register(&sc->et);

 return (0);
}
