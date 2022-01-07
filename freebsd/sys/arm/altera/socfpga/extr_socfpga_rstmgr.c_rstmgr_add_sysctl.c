
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct rstmgr_softc {int dev; } ;


 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int RSTMGR_SYSCTL_FPGA2HPS ;
 int RSTMGR_SYSCTL_HPS2FPGA ;
 int RSTMGR_SYSCTL_LWHPS2FPGA ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct rstmgr_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int rstmgr_sysctl ;

__attribute__((used)) static int
rstmgr_add_sysctl(struct rstmgr_softc *sc)
{
 struct sysctl_oid_list *children;
 struct sysctl_ctx_list *ctx;

 ctx = device_get_sysctl_ctx(sc->dev);
 children = SYSCTL_CHILDREN(device_get_sysctl_tree(sc->dev));

 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "fpga2hps",
     CTLTYPE_UINT | CTLFLAG_RW, sc, RSTMGR_SYSCTL_FPGA2HPS,
     rstmgr_sysctl, "I", "Enable fpga2hps bridge");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "lwhps2fpga",
     CTLTYPE_UINT | CTLFLAG_RW, sc, RSTMGR_SYSCTL_LWHPS2FPGA,
     rstmgr_sysctl, "I", "Enable lwhps2fpga bridge");
 SYSCTL_ADD_PROC(ctx, children, OID_AUTO, "hps2fpga",
     CTLTYPE_UINT | CTLFLAG_RW, sc, RSTMGR_SYSCTL_HPS2FPGA,
     rstmgr_sysctl, "I", "Enable hps2fpga bridge");

 return (0);
}
