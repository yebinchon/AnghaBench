
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_pmic_softc {int sc_irq_res; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int am335x_pmic_start (struct am335x_pmic_softc*) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct am335x_pmic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
am335x_pmic_attach(device_t dev)
{
 struct am335x_pmic_softc *sc;
 int rid;

 sc = device_get_softc(dev);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  device_printf(dev, "cannot allocate interrupt\n");

 }

 am335x_pmic_start(sc);

 return (0);
}
