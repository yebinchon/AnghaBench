
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_reset_softc {int mtx; int res; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int aw_reset_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int device_get_nameunit (int ) ;
 struct aw_reset_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hwreset_register_ofw_provider (int ) ;
 int mtx_init (int *,int ,int *,int ) ;

__attribute__((used)) static int
aw_reset_attach(device_t dev)
{
 struct aw_reset_softc *sc;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, aw_reset_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);

 hwreset_register_ofw_provider(dev);

 return (0);
}
