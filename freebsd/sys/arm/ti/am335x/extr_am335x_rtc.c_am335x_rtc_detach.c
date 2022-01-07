
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_rtc_softc {scalar_t__ sc_mem_res; int ** sc_irq_res; } ;
typedef int device_t ;


 int RTC_LOCK_DESTROY (struct am335x_rtc_softc*) ;
 int SYS_RES_MEMORY ;
 int am335x_rtc_irq_spec ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_release_resources (int ,int ,int **) ;
 struct am335x_rtc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
am335x_rtc_detach(device_t dev)
{
 struct am335x_rtc_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_irq_res[0] != ((void*)0))
  bus_release_resources(dev, am335x_rtc_irq_spec, sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
 RTC_LOCK_DESTROY(sc);

 return (0);
}
