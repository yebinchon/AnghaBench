
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_softc {int pdata; int res; } ;
struct coresight_desc {int dev_type; int dev; int pdata; } ;
typedef int device_t ;


 int CORESIGHT_ETMV4 ;
 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int coresight_get_platform_data (int ) ;
 int coresight_register (struct coresight_desc*) ;
 struct etm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int etm_spec ;

__attribute__((used)) static int
etm_attach(device_t dev)
{
 struct coresight_desc desc;
 struct etm_softc *sc;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, etm_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 sc->pdata = coresight_get_platform_data(dev);
 desc.pdata = sc->pdata;
 desc.dev = dev;
 desc.dev_type = CORESIGHT_ETMV4;
 coresight_register(&desc);

 return (0);
}
