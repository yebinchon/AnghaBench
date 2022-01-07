
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_ccu_softc {int res; } ;
typedef int device_t ;


 int AL_CCU_SNOOP_CONTROL_IOFAB_0_OFFSET ;
 int AL_CCU_SNOOP_CONTROL_IOFAB_1_OFFSET ;
 int AL_CCU_SPECULATION_CONTROL_OFFSET ;
 int al_ccu_spec ;
 int bus_alloc_resources (int ,int ,int *) ;
 int bus_write_4 (int ,int ,int) ;
 struct al_ccu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
al_ccu_attach(device_t dev)
{
 struct al_ccu_softc *sc;
 int err;

 sc = device_get_softc(dev);

 err = bus_alloc_resources(dev, al_ccu_spec, &sc->res);
 if (err != 0) {
  device_printf(dev, "could not allocate resources\n");
  return (err);
 }


 bus_write_4(sc->res, AL_CCU_SNOOP_CONTROL_IOFAB_0_OFFSET, 1);
 bus_write_4(sc->res, AL_CCU_SNOOP_CONTROL_IOFAB_1_OFFSET, 1);


 bus_write_4(sc->res, AL_CCU_SPECULATION_CONTROL_OFFSET, 7);

 return (0);
}
