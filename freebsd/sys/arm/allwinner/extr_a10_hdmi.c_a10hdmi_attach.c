
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ich_arg; int ich_func; } ;
struct a10hdmi_softc {TYPE_1__ mode_hook; int clk_ahb; int clk_hdmi; int clk_lcd; int res; } ;
typedef int device_t ;


 int ENXIO ;
 int a10hdmi_hpd ;
 int a10hdmi_init (struct a10hdmi_softc*) ;
 int a10hdmi_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int clk_enable (int ) ;
 int clk_get_by_ofw_name (int ,int ,char*,int *) ;
 int config_intrhook_establish (TYPE_1__*) ;
 struct a10hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
a10hdmi_attach(device_t dev)
{
 struct a10hdmi_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, a10hdmi_spec, &sc->res)) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }


 error = clk_get_by_ofw_name(dev, 0, "ahb", &sc->clk_ahb);
 if (error != 0) {
  device_printf(dev, "cannot find ahb clock\n");
  return (error);
 }
 error = clk_get_by_ofw_name(dev, 0, "hdmi", &sc->clk_hdmi);
 if (error != 0) {
  device_printf(dev, "cannot find hdmi clock\n");
  return (error);
 }
 error = clk_get_by_ofw_name(dev, 0, "lcd", &sc->clk_lcd);
 if (error != 0) {
  device_printf(dev, "cannot find lcd clock\n");
 }

 error = clk_enable(sc->clk_hdmi);
 if (error != 0) {
  device_printf(dev, "cannot enable hdmi clock\n");
  return (error);
 }

 error = clk_enable(sc->clk_ahb);
 if (error != 0) {
  device_printf(dev, "cannot enable ahb gate\n");
  return (error);
 }

 a10hdmi_init(sc);

 sc->mode_hook.ich_func = a10hdmi_hpd;
 sc->mode_hook.ich_arg = dev;

 error = config_intrhook_establish(&sc->mode_hook);
 if (error != 0)
  return (error);

 return (0);
}
