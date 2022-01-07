
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mv_thermal_softc {int cur_sensor; struct mv_thermal_config* config; int * syscon; int dev; int mtx; } ;
struct mv_thermal_config {int type; int ncpus; } ;
typedef int phandle_t ;
typedef int name ;
typedef int device_t ;
typedef int desc ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int MTX_DEF ;


 int OID_AUTO ;
 scalar_t__ SYSCON_GET_HANDLE (int ,int **) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int ,int,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int ap806_init (struct mv_thermal_softc*) ;
 int compat_data ;
 int cp110_init (struct mv_thermal_softc*) ;
 int device_get_nameunit (int ) ;
 struct mv_thermal_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,int *,int ) ;
 int mv_thermal_sysctl ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
mv_thermal_attach(device_t dev)
{
 struct mv_thermal_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *oid;
 phandle_t node;
 char name[255];
 char desc[255];
 int i;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 sc->config = (struct mv_thermal_config *)
     ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);


 if (SYSCON_GET_HANDLE(sc->dev, &sc->syscon) != 0 ||
     sc->syscon == ((void*)0)) {
  device_printf(dev, "cannot get syscon for device\n");
  return (ENXIO);
 }

 sc->cur_sensor = -1;
 switch (sc->config->type) {
 case 129:
  ap806_init(sc);
  break;
 case 128:
  cp110_init(sc);
  break;
 }

 ctx = device_get_sysctl_ctx(dev);
 oid = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));

 SYSCTL_ADD_PROC(ctx, oid, OID_AUTO, "internal",
     CTLTYPE_INT | CTLFLAG_RD,
     dev, 0, mv_thermal_sysctl,
     "IK",
     "Internal Temperature");

 for (i = 0; i < sc->config->ncpus; i++) {
  snprintf(name, sizeof(name), "cpu%d", i);
  snprintf(desc, sizeof(desc), "CPU%d Temperature", i);
  SYSCTL_ADD_PROC(ctx, oid, OID_AUTO, name,
      CTLTYPE_INT | CTLFLAG_RD,
      dev, i + 1, mv_thermal_sysctl,
      "IK",
      desc);
 }

 return (0);
}
