
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * sc_mem_res; scalar_t__ sc_mem_rid; int sc_get_i2c_dev; int sc_dev; } ;
struct imx_hdmi_softc {scalar_t__ i2c_xref; TYPE_1__ base; } ;
typedef scalar_t__ phandle_t ;
typedef int i2c_xref ;
typedef int device_t ;


 int ENXIO ;
 int IOMUXC_GPR3 ;
 int IOMUXC_GPR3_HDMI_IPU1_DI0 ;
 int IOMUXC_GPR3_HDMI_MASK ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int config_intrhook_oneshot (int ,int ) ;
 struct imx_hdmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int imx_ccm_hdmi_enable () ;
 int imx_hdmi_detach (int ) ;
 int imx_hdmi_get_i2c_dev ;
 int imx_hdmi_init ;
 int imx_iomux_gpr_get (int ) ;
 int imx_iomux_gpr_set (int ,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;

__attribute__((used)) static int
imx_hdmi_attach(device_t dev)
{
 struct imx_hdmi_softc *sc;
 int err;
 uint32_t gpr3;
 phandle_t node, i2c_xref;

 sc = device_get_softc(dev);
 sc->base.sc_dev = dev;
 sc->base.sc_get_i2c_dev = imx_hdmi_get_i2c_dev;
 err = 0;


 sc->base.sc_mem_rid = 0;
 sc->base.sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->base.sc_mem_rid, RF_ACTIVE);
 if (sc->base.sc_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot allocate memory resources\n");
  err = ENXIO;
  goto out;
 }

 node = ofw_bus_get_node(dev);
 if (OF_getencprop(node, "ddc-i2c-bus", &i2c_xref, sizeof(i2c_xref)) == -1)
  sc->i2c_xref = 0;
 else
  sc->i2c_xref = i2c_xref;

 imx_ccm_hdmi_enable();

 gpr3 = imx_iomux_gpr_get(IOMUXC_GPR3);
 gpr3 &= ~(IOMUXC_GPR3_HDMI_MASK);
 gpr3 |= IOMUXC_GPR3_HDMI_IPU1_DI0;
 imx_iomux_gpr_set(IOMUXC_GPR3, gpr3);


 config_intrhook_oneshot(imx_hdmi_init, dev);
 return (0);

out:
 imx_hdmi_detach(dev);

 return (err);
}
