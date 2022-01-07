
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct imx6_anatop_softc* ich_arg; int ich_func; } ;
struct imx6_anatop_softc {int res; int cpu_curmv; int dev; TYPE_1__ intr_setup_hook; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int ENXIO ;
 int IMX6_ANALOG_PMU_MISC0_SELFBIASOFF ;
 int IMX6_ANALOG_PMU_MISC0_SET ;
 int OID_AUTO ;
 int SYSCTL_ADD_UINT (int ,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resources (int ,int ,int ) ;
 int config_intrhook_establish (TYPE_1__*) ;
 struct imx6_anatop_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 struct imx6_anatop_softc* imx6_anatop_sc ;
 int imx6_anatop_spec ;
 int imx6_anatop_write_4 (int ,int ) ;
 int intr_setup ;

__attribute__((used)) static int
imx6_anatop_attach(device_t dev)
{
 struct imx6_anatop_softc *sc;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;


 if (bus_alloc_resources(dev, imx6_anatop_spec, sc->res)) {
  device_printf(dev, "Cannot allocate resources\n");
  err = ENXIO;
  goto out;
 }

 sc->intr_setup_hook.ich_func = intr_setup;
 sc->intr_setup_hook.ich_arg = sc;
 config_intrhook_establish(&sc->intr_setup_hook);

 SYSCTL_ADD_UINT(device_get_sysctl_ctx(sc->dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev)),
     OID_AUTO, "cpu_voltage", CTLFLAG_RD,
     &sc->cpu_curmv, 0, "Current CPU voltage in millivolts");

 imx6_anatop_sc = sc;






 imx6_anatop_write_4(IMX6_ANALOG_PMU_MISC0_SET,
     IMX6_ANALOG_PMU_MISC0_SELFBIASOFF);
 err = 0;

out:

 if (err != 0) {
  bus_release_resources(dev, imx6_anatop_spec, sc->res);
 }

 return (err);
}
