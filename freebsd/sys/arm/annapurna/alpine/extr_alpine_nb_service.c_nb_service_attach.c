
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nb_service_softc {int res; } ;
typedef int device_t ;


 int AL_NB_ACF_MISC_OFFSET ;
 int AL_NB_ACF_MISC_READ_BYPASS ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct nb_service_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int nb_service_spec ;

__attribute__((used)) static int
nb_service_attach(device_t dev)
{
 struct nb_service_softc *sc;
 uint32_t val;
 int err;

 sc = device_get_softc(dev);

 err = bus_alloc_resources(dev, nb_service_spec, &sc->res);
 if (err != 0) {
  device_printf(dev, "could not allocate resources\n");
  return (err);
 }


 val = bus_read_4(sc->res, AL_NB_ACF_MISC_OFFSET);
 val &= ~AL_NB_ACF_MISC_READ_BYPASS;
 bus_write_4(sc->res, AL_NB_ACF_MISC_OFFSET, val);

 return (0);
}
