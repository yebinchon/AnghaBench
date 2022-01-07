
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_softc {int sc_hdmi_evh; void* sc_mem_res; scalar_t__ sc_mem_rid; void* sc_irq_res; scalar_t__ sc_irq_rid; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct ipu_softc*,int ) ;
 int IPU_LOCK_INIT (struct ipu_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_release_resource (int ,int ,scalar_t__,void*) ;
 struct ipu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int have_ipu ;
 int hdmi_event ;
 int imx_ccm_ipu_enable (int) ;
 int ipu_hdmi_event ;
 scalar_t__ src_reset_ipu () ;

__attribute__((used)) static int
ipu_attach(device_t dev)
{
 struct ipu_softc *sc;

 if (have_ipu)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_mem_rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_mem_rid, RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 sc->sc_irq_rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->sc_irq_rid, RF_ACTIVE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->sc_mem_rid, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }


 imx_ccm_ipu_enable(1);

 if (src_reset_ipu() != 0) {
  device_printf(dev, "failed to reset IPU\n");
  return (ENXIO);
 }

 IPU_LOCK_INIT(sc);

 sc->sc_hdmi_evh = EVENTHANDLER_REGISTER(hdmi_event,
     ipu_hdmi_event, sc, 0);

 have_ipu = 1;

 return (0);
}
