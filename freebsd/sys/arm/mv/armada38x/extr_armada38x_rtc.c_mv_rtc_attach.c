
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_rtc_softc {int mutex; int res; int dev; } ;
typedef int device_t ;


 int ENXIO ;
 int MTX_SPIN ;
 int RTC_RES_US ;
 int bus_alloc_resources (int ,int ,int ) ;
 int clock_register (int ,int ) ;
 int device_get_nameunit (int ) ;
 struct mv_rtc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int mv_rtc_configure_bus (struct mv_rtc_softc*) ;
 int res_spec ;

__attribute__((used)) static int
mv_rtc_attach(device_t dev)
{
 struct mv_rtc_softc *sc;
 int unit, ret;

 unit = device_get_unit(dev);

 sc = device_get_softc(dev);
 sc->dev = dev;

 clock_register(dev, RTC_RES_US);

 mtx_init(&sc->mutex, device_get_nameunit(dev), ((void*)0), MTX_SPIN);

 ret = bus_alloc_resources(dev, res_spec, sc->res);

 if (ret != 0) {
  device_printf(dev, "could not allocate resources\n");
  mtx_destroy(&sc->mutex);
  return (ENXIO);
 }
 mv_rtc_configure_bus(sc);

 return (0);
}
