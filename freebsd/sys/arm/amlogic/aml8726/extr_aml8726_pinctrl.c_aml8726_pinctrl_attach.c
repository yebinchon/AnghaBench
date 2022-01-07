
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pud_ctrl; int ppin; int func; } ;
struct aml8726_pinctrl_softc {int res; TYPE_1__ soc; int dev; } ;
typedef int device_t ;


 int AML_PINCTRL_LOCK_INIT (struct aml8726_pinctrl_softc*) ;




 int ENXIO ;
 int aml8726_m3_pinctrl ;
 int aml8726_m3_pkg_pin ;
 int aml8726_m6_pinctrl ;
 int aml8726_m6_pkg_pin ;
 int aml8726_m8_pinctrl ;
 int aml8726_m8_pkg_pin ;
 int aml8726_m8b_pinctrl ;
 int aml8726_m8b_pkg_pin ;
 int aml8726_pinctrl_spec ;
 int aml8726_soc_hw_rev ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 struct aml8726_pinctrl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_tree (int ) ;
 int fdt_pinctrl_register (int ,char*) ;

__attribute__((used)) static int
aml8726_pinctrl_attach(device_t dev)
{
 struct aml8726_pinctrl_softc *sc = device_get_softc(dev);

 sc->dev = dev;

 sc->soc.pud_ctrl = 0;

 switch (aml8726_soc_hw_rev) {
 case 131:
  sc->soc.func = aml8726_m3_pinctrl;
  sc->soc.ppin = aml8726_m3_pkg_pin;
  break;
 case 130:
  sc->soc.func = aml8726_m6_pinctrl;
  sc->soc.ppin = aml8726_m6_pkg_pin;
  break;
 case 129:
  sc->soc.func = aml8726_m8_pinctrl;
  sc->soc.ppin = aml8726_m8_pkg_pin;
  sc->soc.pud_ctrl = 1;
  break;
 case 128:
  sc->soc.func = aml8726_m8b_pinctrl;
  sc->soc.ppin = aml8726_m8b_pkg_pin;
  sc->soc.pud_ctrl = 1;
  break;
 default:
  device_printf(dev, "unsupported SoC\n");
  return (ENXIO);

 }

 if (bus_alloc_resources(dev, aml8726_pinctrl_spec, sc->res)) {
  device_printf(dev, "could not allocate resources for device\n");
  return (ENXIO);
 }

 AML_PINCTRL_LOCK_INIT(sc);

 fdt_pinctrl_register(dev, "amlogic,pins");
 fdt_pinctrl_configure_tree(dev);

 return (0);
}
