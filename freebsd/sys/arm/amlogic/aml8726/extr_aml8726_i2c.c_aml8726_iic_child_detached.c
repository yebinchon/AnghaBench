
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_iic_softc {int * iicbb; } ;
typedef int * device_t ;


 struct aml8726_iic_softc* device_get_softc (int *) ;

__attribute__((used)) static void
aml8726_iic_child_detached(device_t dev, device_t child)
{
 struct aml8726_iic_softc *sc = device_get_softc(dev);

 if (child == sc->iicbb)
  sc->iicbb = ((void*)0);
}
