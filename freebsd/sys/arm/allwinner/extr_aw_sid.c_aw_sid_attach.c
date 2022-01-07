
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aw_sid_softc {struct aw_sid_conf* sid_conf; int prctl_mtx; int res; int sid_dev; } ;
struct aw_sid_conf {int nfuses; TYPE_1__* efuses; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;
struct TYPE_3__ {int desc; int id; int name; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_STRING ;
 int ENXIO ;
 int MTX_DEF ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (int ,int ,int ,int ,int,int ,int ,int ,char*,int ) ;
 int SYSCTL_CHILDREN (int ) ;
 struct aw_sid_softc* aw_sid_sc ;
 int aw_sid_spec ;
 int aw_sid_sysctl ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int compat_data ;
 int device_get_nameunit (int ) ;
 struct aw_sid_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 TYPE_2__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
aw_sid_attach(device_t dev)
{
 struct aw_sid_softc *sc;
 phandle_t node;
 int i;

 node = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);
 sc->sid_dev = dev;

 if (bus_alloc_resources(dev, aw_sid_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 mtx_init(&sc->prctl_mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);
 sc->sid_conf = (struct aw_sid_conf *)ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 aw_sid_sc = sc;


 OF_device_register_xref(OF_xref_from_node(node), dev);

 for (i = 0; i < sc->sid_conf->nfuses ;i++) { SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),

      SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
      OID_AUTO, sc->sid_conf->efuses[i].name,
      CTLTYPE_STRING | CTLFLAG_RD,
      dev, sc->sid_conf->efuses[i].id, aw_sid_sysctl,
      "A", sc->sid_conf->efuses[i].desc);
 }
 return (0);
}
