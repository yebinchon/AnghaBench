
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int always; int xo; int gpo; } ;
struct aml8726_rtc_softc {int res; TYPE_1__ init; int dev; } ;
typedef int device_t ;


 int AML_RTC_LOCK_INIT (struct aml8726_rtc_softc*) ;




 int ENXIO ;
 scalar_t__ aml8726_rtc_check_xo (struct aml8726_rtc_softc*) ;
 int aml8726_rtc_initialize (struct aml8726_rtc_softc*) ;
 int aml8726_rtc_spec ;
 int aml8726_soc_hw_rev ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int clock_register (int ,int) ;
 struct aml8726_rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aml8726_rtc_attach(device_t dev)
{
 struct aml8726_rtc_softc *sc = device_get_softc(dev);

 sc->dev = dev;

 switch (aml8726_soc_hw_rev) {
 case 131:
  sc->init.always = 1;
  sc->init.xo = 0x3c0a;
  sc->init.gpo = 0x100000;
  break;
 case 130:
 case 129:
 case 128:
  sc->init.always = 0;
  sc->init.xo = 0x180a;
  sc->init.gpo = 0x500000;
  break;
 default:
  device_printf(dev, "unsupported SoC\n");
  return (ENXIO);

 }

 if (bus_alloc_resources(dev, aml8726_rtc_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }

 aml8726_rtc_initialize(sc);

 if (aml8726_rtc_check_xo(sc) != 0) {
  device_printf(dev, "crystal oscillator check failed\n");

  bus_release_resources(dev, aml8726_rtc_spec, sc->res);

  return (ENXIO);
 }

 AML_RTC_LOCK_INIT(sc);

 clock_register(dev, 1000000);

 return (0);
}
