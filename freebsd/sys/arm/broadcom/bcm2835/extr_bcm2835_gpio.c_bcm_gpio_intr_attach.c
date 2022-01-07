
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_gpio_softc {int * sc_intrhand; int ** sc_res; } ;
typedef int device_t ;


 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int bcm_gpio_intr_bank0 ;
 int bcm_gpio_intr_bank1 ;
 scalar_t__ bcm_gpio_pic_attach (struct bcm_gpio_softc*) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int ,int *,struct bcm_gpio_softc*,int *) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
bcm_gpio_intr_attach(device_t dev)
{
 struct bcm_gpio_softc *sc;





 sc = device_get_softc(dev);
 if (sc->sc_res[1] == ((void*)0) || sc->sc_res[2] == ((void*)0))
  return (-1);

 if (bcm_gpio_pic_attach(sc) != 0) {
  device_printf(dev, "unable to attach PIC\n");
  return (-1);
 }
 if (bus_setup_intr(dev, sc->sc_res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     bcm_gpio_intr_bank0, ((void*)0), sc, &sc->sc_intrhand[0]) != 0)
  return (-1);
 if (bus_setup_intr(dev, sc->sc_res[2], INTR_TYPE_MISC | INTR_MPSAFE,
     bcm_gpio_intr_bank1, ((void*)0), sc, &sc->sc_intrhand[1]) != 0)
  return (-1);

 return (0);
}
