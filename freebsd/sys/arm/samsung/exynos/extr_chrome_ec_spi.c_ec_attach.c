
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_softc {int dev; } ;
typedef int device_t ;


 struct ec_softc* device_get_softc (int ) ;
 struct ec_softc* ec_sc ;

__attribute__((used)) static int
ec_attach(device_t dev)
{
 struct ec_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;

 ec_sc = sc;

 return (0);
}
