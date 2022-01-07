
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_softc {scalar_t__ sc_type; } ;
typedef int device_t ;


 scalar_t__ TWL_DEVICE_6025 ;
 struct twl_softc* device_get_softc (int ) ;

int
twl_is_6025(device_t dev)
{
 struct twl_softc *sc = device_get_softc(dev);
 return (sc->sc_type == TWL_DEVICE_6025);
}
