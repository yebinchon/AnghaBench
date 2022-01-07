
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct amdvi_softc {int end_dev_rid; int start_dev_rid; int pci_rid; int total_cmd; int event_intr_cnt; int dev; } ;
typedef int device_t ;


 int CTLFLAG_RD ;
 int CTLTYPE_UINT ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct amdvi_softc*,int,int ,char*,char*) ;
 int SYSCTL_ADD_U16 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_ULONG (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,int *,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int amdvi_handle_sysctl ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;

__attribute__((used)) static void
amdvi_add_sysctl(struct amdvi_softc *softc)
{
 struct sysctl_oid_list *child;
 struct sysctl_ctx_list *ctx;
 device_t dev;

 dev = softc->dev;
 ctx = device_get_sysctl_ctx(dev);
 child = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));

 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "event_intr_count", CTLFLAG_RD,
     &softc->event_intr_cnt, "Event interrupt count");
 SYSCTL_ADD_ULONG(ctx, child, OID_AUTO, "command_count", CTLFLAG_RD,
     &softc->total_cmd, "Command submitted count");
 SYSCTL_ADD_U16(ctx, child, OID_AUTO, "pci_rid", CTLFLAG_RD,
     &softc->pci_rid, 0, "IOMMU RID");
 SYSCTL_ADD_U16(ctx, child, OID_AUTO, "start_dev_rid", CTLFLAG_RD,
     &softc->start_dev_rid, 0, "Start of device under this IOMMU");
 SYSCTL_ADD_U16(ctx, child, OID_AUTO, "end_dev_rid", CTLFLAG_RD,
     &softc->end_dev_rid, 0, "End of device under this IOMMU");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "command_head",
     CTLTYPE_UINT | CTLFLAG_RD, softc, 0,
     amdvi_handle_sysctl, "IU", "Command head");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "command_tail",
     CTLTYPE_UINT | CTLFLAG_RD, softc, 1,
     amdvi_handle_sysctl, "IU", "Command tail");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "event_head",
     CTLTYPE_UINT | CTLFLAG_RD, softc, 2,
     amdvi_handle_sysctl, "IU", "Command head");
 SYSCTL_ADD_PROC(ctx, child, OID_AUTO, "event_tail",
     CTLTYPE_UINT | CTLFLAG_RD, softc, 3,
     amdvi_handle_sysctl, "IU", "Command tail");
}
