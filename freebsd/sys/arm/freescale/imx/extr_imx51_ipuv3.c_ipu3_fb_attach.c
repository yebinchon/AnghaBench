
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu3sc_softc {int dev; void* dc_ioh; int iot; void* dmfc_ioh; void* di0_ioh; void* di1_ioh; void* dp_ioh; void* idmac_ioh; void* cpmem_ioh; int * ih; void* dctmpl_ioh; void* cm_ioh; } ;
typedef int reg ;
typedef int phandle_t ;
typedef uintptr_t pcell_t ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef void* bus_space_handle_t ;


 int ENXIO ;
 int IMX51CLK_IPU_HSP_CLK_ROOT ;
 int IMX51_INT_IPUV3 ;
 int IPL_BIO ;
 uintptr_t IPU_CM_BASE (uintptr_t) ;
 int IPU_CM_SIZE ;
 uintptr_t IPU_CPMEM_BASE (uintptr_t) ;
 int IPU_CPMEM_SIZE ;
 uintptr_t IPU_DCTMPL_BASE (uintptr_t) ;
 int IPU_DCTMPL_SIZE ;
 uintptr_t IPU_DC_BASE (uintptr_t) ;
 int IPU_DC_SIZE ;
 uintptr_t IPU_DI0_BASE (uintptr_t) ;
 int IPU_DI0_SIZE ;
 uintptr_t IPU_DI1_BASE (uintptr_t) ;
 int IPU_DI1_SIZE ;
 uintptr_t IPU_DMFC_BASE (uintptr_t) ;
 int IPU_DMFC_SIZE ;
 uintptr_t IPU_DP_BASE (uintptr_t) ;
 int IPU_DP_SIZE ;
 uintptr_t IPU_IDMAC_BASE (uintptr_t) ;
 int IPU_IDMAC_SIZE ;
 scalar_t__ OF_getencprop (int ,char*,uintptr_t*,int) ;
 int SC_AUTODETECT_KBD ;
 scalar_t__ bootverbose ;
 int bus_space_map (int ,uintptr_t,int ,int ,void**) ;
 int bus_space_unmap (int ,void*,int ) ;
 int device_get_flags (int ) ;
 struct ipu3sc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int fdtbus_bs_tag ;
 int imx51_get_clk_gating (int ) ;
 int * imx51_ipuv3_intr_establish (int,int ,int ,struct ipu3sc_softc*) ;
 int ipu3_fb_init (struct ipu3sc_softc*) ;
 struct ipu3sc_softc* ipu3sc_softc ;
 int ipuv3intr ;
 int ofw_bus_get_node (int ) ;
 int sc_attach_unit (int ,int) ;

__attribute__((used)) static int
ipu3_fb_attach(device_t dev)
{
 struct ipu3sc_softc *sc = device_get_softc(dev);
 bus_space_tag_t iot;
 bus_space_handle_t ioh;
 phandle_t node;
 pcell_t reg;
 int err;
 uintptr_t base;

 if (ipu3sc_softc)
  return (ENXIO);

 ipu3sc_softc = sc;

 if (bootverbose)
  device_printf(dev, "clock gate status is %d\n",
      imx51_get_clk_gating(IMX51CLK_IPU_HSP_CLK_ROOT));

 sc->dev = dev;

 err = (sc_attach_unit(device_get_unit(dev),
     device_get_flags(dev) | SC_AUTODETECT_KBD));

 if (err) {
  device_printf(dev, "failed to attach syscons\n");
  goto fail;
 }

 sc = device_get_softc(dev);
 sc->iot = iot = fdtbus_bs_tag;
 node = ofw_bus_get_node(dev);
 if ((OF_getencprop(node, "reg", &reg, sizeof(reg))) <= 0)
  base = 0;
 else
  base = reg - IPU_CM_BASE(0);

 err = bus_space_map(iot, IPU_CM_BASE(base), IPU_CM_SIZE, 0, &ioh);
 if (err)
  goto fail_retarn_cm;
 sc->cm_ioh = ioh;


 err = bus_space_map(iot, IPU_DMFC_BASE(base), IPU_DMFC_SIZE, 0, &ioh);
 if (err)
  goto fail_retarn_dmfc;
 sc->dmfc_ioh = ioh;


 err = bus_space_map(iot, IPU_DI0_BASE(base), IPU_DI0_SIZE, 0, &ioh);
 if (err)
  goto fail_retarn_di0;
 sc->di0_ioh = ioh;


 err = bus_space_map(iot, IPU_DI1_BASE(base), IPU_DI0_SIZE, 0, &ioh);
 if (err)
  goto fail_retarn_di1;
 sc->di1_ioh = ioh;


 err = bus_space_map(iot, IPU_DP_BASE(base), IPU_DP_SIZE, 0, &ioh);
 if (err)
  goto fail_retarn_dp;
 sc->dp_ioh = ioh;


 err = bus_space_map(iot, IPU_DC_BASE(base), IPU_DC_SIZE, 0, &ioh);
 if (err)
  goto fail_retarn_dc;
 sc->dc_ioh = ioh;


 err = bus_space_map(iot, IPU_IDMAC_BASE(base), IPU_IDMAC_SIZE, 0,
     &ioh);
 if (err)
  goto fail_retarn_idmac;
 sc->idmac_ioh = ioh;


 err = bus_space_map(iot, IPU_CPMEM_BASE(base), IPU_CPMEM_SIZE, 0,
     &ioh);
 if (err)
  goto fail_retarn_cpmem;
 sc->cpmem_ioh = ioh;


 err = bus_space_map(iot, IPU_DCTMPL_BASE(base), IPU_DCTMPL_SIZE, 0,
     &ioh);
 if (err)
  goto fail_retarn_dctmpl;
 sc->dctmpl_ioh = ioh;
 ipu3_fb_init(sc);

 return (0);

fail:
 return (ENXIO);
fail_retarn_dctmpl:
 bus_space_unmap(sc->iot, sc->cpmem_ioh, IPU_CPMEM_SIZE);
fail_retarn_cpmem:
 bus_space_unmap(sc->iot, sc->idmac_ioh, IPU_IDMAC_SIZE);
fail_retarn_idmac:
 bus_space_unmap(sc->iot, sc->dc_ioh, IPU_DC_SIZE);
fail_retarn_dp:
 bus_space_unmap(sc->iot, sc->dp_ioh, IPU_DP_SIZE);
fail_retarn_dc:
 bus_space_unmap(sc->iot, sc->di1_ioh, IPU_DI1_SIZE);
fail_retarn_di1:
 bus_space_unmap(sc->iot, sc->di0_ioh, IPU_DI0_SIZE);
fail_retarn_di0:
 bus_space_unmap(sc->iot, sc->dmfc_ioh, IPU_DMFC_SIZE);
fail_retarn_dmfc:
 bus_space_unmap(sc->iot, sc->dc_ioh, IPU_CM_SIZE);
fail_retarn_cm:
 device_printf(sc->dev,
     "failed to map registers (errno=%d)\n", err);
 return (err);
}
