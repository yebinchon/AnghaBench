
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ irq; int isrc; int tri; int pol; } ;
struct aw_nmi_softc {int * res; int intrcookie; TYPE_1__ intr; int dev; struct aw_nmi_reg_cfg* cfg; } ;
struct aw_nmi_reg_cfg {int pending_reg; int enable_reg; } ;
typedef scalar_t__ phandle_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 int INTR_POLARITY_CONFORM ;
 int INTR_TRIGGER_CONFORM ;
 int INTR_TYPE_MISC ;
 int NMI_IRQ_ACK ;
 int NMI_IRQ_ENABLE ;
 scalar_t__ OF_xref_from_node (int ) ;
 int SC_NMI_WRITE (struct aw_nmi_softc*,int ,int) ;
 int aw_nmi_intr ;
 int aw_nmi_res_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int ,int ,int *,struct aw_nmi_softc*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int compat_data ;
 int device_get_nameunit (int ) ;
 struct aw_nmi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_isrc_register (int *,int ,int ,char*,int ,scalar_t__) ;
 int * intr_pic_register (int ,intptr_t) ;
 int ofw_bus_get_node (int ) ;
 TYPE_2__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
aw_nmi_attach(device_t dev)
{
 struct aw_nmi_softc *sc;
 phandle_t xref;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->cfg = (struct aw_nmi_reg_cfg *)
     ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 if (bus_alloc_resources(dev, aw_nmi_res_spec, sc->res) != 0) {
  device_printf(dev, "can't allocate device resources\n");
  return (ENXIO);
 }
 if ((bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC,
     aw_nmi_intr, ((void*)0), sc, &sc->intrcookie))) {
  device_printf(dev, "unable to register interrupt handler\n");
  bus_release_resources(dev, aw_nmi_res_spec, sc->res);
  return (ENXIO);
 }


 SC_NMI_WRITE(sc, sc->cfg->enable_reg, !NMI_IRQ_ENABLE);
 SC_NMI_WRITE(sc, sc->cfg->pending_reg, NMI_IRQ_ACK);

 xref = OF_xref_from_node(ofw_bus_get_node(dev));

 sc->intr.irq = 0;
 sc->intr.pol = INTR_POLARITY_CONFORM;
 sc->intr.tri = INTR_TRIGGER_CONFORM;
 if (intr_isrc_register(&sc->intr.isrc, sc->dev, 0, "%s,%u",
       device_get_nameunit(sc->dev), sc->intr.irq) != 0)
  goto error;

 if (intr_pic_register(dev, (intptr_t)xref) == ((void*)0)) {
  device_printf(dev, "could not register pic\n");
  goto error;
 }
 return (0);

error:
 bus_teardown_intr(dev, sc->res[1], sc->intrcookie);
 bus_release_resources(dev, aw_nmi_res_spec, sc->res);
 return (ENXIO);
}
