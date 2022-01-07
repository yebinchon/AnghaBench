
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_pwm_softc {scalar_t__ sc_mem_res; scalar_t__ mode2; scalar_t__ mode; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bcm_pwm_reconf (struct bcm_pwm_softc*) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 struct bcm_pwm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_pwm_detach(device_t dev)
{
 struct bcm_pwm_softc *sc;

 bus_generic_detach(dev);

 sc = device_get_softc(dev);
 sc->mode = 0;
 sc->mode2 = 0;
 (void)bcm_pwm_reconf(sc);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);

 return (0);
}
