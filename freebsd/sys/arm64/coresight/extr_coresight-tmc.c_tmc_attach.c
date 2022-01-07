
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_softc {int pdata; int res; void* dev; } ;
struct coresight_desc {int dev_type; void* dev; int pdata; } ;
typedef void* device_t ;


 int CORESIGHT_TMC ;
 int ENXIO ;
 scalar_t__ bus_alloc_resources (void*,int ,int *) ;
 int coresight_get_platform_data (void*) ;
 int coresight_register (struct coresight_desc*) ;
 struct tmc_softc* device_get_softc (void*) ;
 int device_printf (void*,char*) ;
 int tmc_spec ;

__attribute__((used)) static int
tmc_attach(device_t dev)
{
 struct coresight_desc desc;
 struct tmc_softc *sc;

 sc = device_get_softc(dev);

 sc->dev = dev;

 if (bus_alloc_resources(dev, tmc_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 sc->pdata = coresight_get_platform_data(dev);
 desc.pdata = sc->pdata;
 desc.dev = dev;
 desc.dev_type = CORESIGHT_TMC;
 coresight_register(&desc);

 return (0);
}
