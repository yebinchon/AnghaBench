
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funnel_softc {int pdata; int res; } ;
struct coresight_desc {int dev_type; int dev; int pdata; } ;
typedef int device_t ;


 int CORESIGHT_FUNNEL ;
 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int coresight_get_platform_data (int ) ;
 int coresight_register (struct coresight_desc*) ;
 struct funnel_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int funnel_spec ;

__attribute__((used)) static int
funnel_attach(device_t dev)
{
 struct coresight_desc desc;
 struct funnel_softc *sc;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, funnel_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 sc->pdata = coresight_get_platform_data(dev);
 desc.pdata = sc->pdata;
 desc.dev = dev;
 desc.dev_type = CORESIGHT_FUNNEL;
 coresight_register(&desc);

 return (0);
}
