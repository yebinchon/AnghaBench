
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_cpucfg_softc {int dev; } ;
typedef int device_t ;


 struct aml8726_cpucfg_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_cpucfg_attach(device_t dev)
{
 struct aml8726_cpucfg_softc *sc = device_get_softc(dev);

 sc->dev = dev;

 return (0);
}
