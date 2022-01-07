
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_coretemp_softc {int core_max_temp; int cpu_id; int dev; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int device_t ;


 int CORETEMP_DELTA ;
 int CORETEMP_RESOLUTION ;
 int CORETEMP_TEMP ;
 int CORETEMP_TJMAX ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int,int *,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int coretemp_get_val_sysctl ;
 int device_get_parent (int ) ;
 struct tegra124_coretemp_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int tegra124_coretemp_ofw_parse (struct tegra124_coretemp_softc*) ;

__attribute__((used)) static int
tegra124_coretemp_attach(device_t dev)
{
 struct tegra124_coretemp_softc *sc;
 device_t pdev;
 struct sysctl_oid *oid;
 struct sysctl_ctx_list *ctx;
 int rv;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->cpu_id = device_get_unit(dev);
 sc->core_max_temp = 102000;
 pdev = device_get_parent(dev);

 rv = tegra124_coretemp_ofw_parse(sc);
 if (rv != 0)
  return (rv);

 ctx = device_get_sysctl_ctx(dev);

 oid = SYSCTL_ADD_NODE(ctx,
     SYSCTL_CHILDREN(device_get_sysctl_tree(pdev)), OID_AUTO,
     "coretemp", CTLFLAG_RD, ((void*)0), "Per-CPU thermal information");




 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(device_get_sysctl_tree(pdev)),
     OID_AUTO, "temperature", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
     dev, CORETEMP_TEMP, coretemp_get_val_sysctl, "IK",
     "Current temperature");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO, "delta",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_DELTA,
     coretemp_get_val_sysctl, "I",
     "Delta between TCC activation and current temperature");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO, "resolution",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_RESOLUTION,
     coretemp_get_val_sysctl, "I",
     "Resolution of CPU thermal sensor");
 SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(oid), OID_AUTO, "tjmax",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, dev, CORETEMP_TJMAX,
     coretemp_get_val_sysctl, "IK",
     "TCC activation temperature");

 return (0);
}
