
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx6_anatop_softc {int intr_setup_hook; int dev; int temp_intrhand; int ** res; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 size_t IRQRES ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_setup_intr (int ,int *,int,int ,int *,struct imx6_anatop_softc*,int *) ;
 int config_intrhook_disestablish (int *) ;
 int device_printf (int ,char*) ;
 int tempmon_intr ;

__attribute__((used)) static void
intr_setup(void *arg)
{
 int rid;
 struct imx6_anatop_softc *sc;

 sc = arg;
 rid = 0;
 sc->res[IRQRES] = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (sc->res[IRQRES] != ((void*)0)) {
  bus_setup_intr(sc->dev, sc->res[IRQRES],
      INTR_TYPE_MISC | INTR_MPSAFE, tempmon_intr, ((void*)0), sc,
      &sc->temp_intrhand);
 } else {
  device_printf(sc->dev, "Cannot allocate IRQ resource\n");
 }
 config_intrhook_disestablish(&sc->intr_setup_hook);
}
