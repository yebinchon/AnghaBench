
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* et_name; int et_flags; int et_quality; int et_max_period; struct arm_tmr_softc* et_priv; int et_stop; int et_start; int et_min_period; int et_frequency; } ;
struct arm_tmr_softc {int memrid; int irqrid; TYPE_1__ et; int clkfreq; int dev; int * prv_irq; int * prv_mem; } ;


 int EBUSY ;
 int ENXIO ;
 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERCPU ;
 int ET_FLAGS_PERIODIC ;
 int INTR_TYPE_CLK ;
 int PRV_TIMER_CTRL ;
 int RF_ACTIVE ;
 int SBT_1S ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 TYPE_1__* arm_tmr_et ;
 int arm_tmr_intr ;
 int arm_tmr_start ;
 int arm_tmr_stop ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int ,int ,int *,struct arm_tmr_softc*,void**) ;
 int device_printf (int ,char*) ;
 int et_register (TYPE_1__*) ;
 int nstosbt (int) ;
 int tmr_prv_write_4 (struct arm_tmr_softc*,int ,int) ;

__attribute__((used)) static int
attach_et(struct arm_tmr_softc *sc)
{
 void *ihl;
 int irid, mrid;

 if (arm_tmr_et != ((void*)0))
  return (EBUSY);

 mrid = sc->memrid;
 sc->prv_mem = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY, &mrid,
     RF_ACTIVE);
 if (sc->prv_mem == ((void*)0)) {
  device_printf(sc->dev, "could not allocate prv mem resources\n");
  return (ENXIO);
 }
 tmr_prv_write_4(sc, PRV_TIMER_CTRL, 0x00000000);

 irid = sc->irqrid;
 sc->prv_irq = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &irid, RF_ACTIVE);
 if (sc->prv_irq == ((void*)0)) {
  bus_release_resource(sc->dev, SYS_RES_MEMORY, mrid, sc->prv_mem);
  device_printf(sc->dev, "could not allocate prv irq resources\n");
  return (ENXIO);
 }

 if (bus_setup_intr(sc->dev, sc->prv_irq, INTR_TYPE_CLK, arm_tmr_intr,
   ((void*)0), sc, &ihl) != 0) {
  bus_release_resource(sc->dev, SYS_RES_MEMORY, mrid, sc->prv_mem);
  bus_release_resource(sc->dev, SYS_RES_IRQ, irid, sc->prv_irq);
  device_printf(sc->dev, "unable to setup the et irq handler.\n");
  return (ENXIO);
 }
 sc->et.et_name = "MPCore";
 sc->et.et_flags = ET_FLAGS_PERIODIC | ET_FLAGS_ONESHOT | ET_FLAGS_PERCPU;
 sc->et.et_quality = 1000;
 sc->et.et_frequency = sc->clkfreq;
 sc->et.et_min_period = nstosbt(20);
 sc->et.et_max_period = 2 * SBT_1S;
 sc->et.et_start = arm_tmr_start;
 sc->et.et_stop = arm_tmr_stop;
 sc->et.et_priv = sc;
 et_register(&sc->et);
 arm_tmr_et = &sc->et;

 return (0);
}
