
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpstr2 ;
typedef int tmpstr ;
struct cd_softc {int minimum_command_size; int * sysctl_tree; int sysctl_ctx; int flags; } ;
struct cam_periph {int unit_number; scalar_t__ softc; } ;


 int CD_FLAG_SCTX_INIT ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int OID_AUTO ;
 int * SYSCTL_ADD_NODE_WITH_LABEL (int *,int ,int ,char*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _kern_cam_cd ;
 scalar_t__ cam_periph_acquire (struct cam_periph*) ;
 int cam_periph_release (struct cam_periph*) ;
 int cdcmdsizesysctl ;
 int printf (char*) ;
 int snprintf (char*,int,char*,int) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static void
cdsysctlinit(void *context, int pending)
{
 struct cam_periph *periph;
 struct cd_softc *softc;
 char tmpstr[32], tmpstr2[16];

 periph = (struct cam_periph *)context;
 if (cam_periph_acquire(periph) != 0)
  return;

 softc = (struct cd_softc *)periph->softc;
 snprintf(tmpstr, sizeof(tmpstr), "CAM CD unit %d", periph->unit_number);
 snprintf(tmpstr2, sizeof(tmpstr2), "%d", periph->unit_number);

 sysctl_ctx_init(&softc->sysctl_ctx);
 softc->flags |= CD_FLAG_SCTX_INIT;
 softc->sysctl_tree = SYSCTL_ADD_NODE_WITH_LABEL(&softc->sysctl_ctx,
  SYSCTL_STATIC_CHILDREN(_kern_cam_cd), OID_AUTO,
  tmpstr2, CTLFLAG_RD, 0, tmpstr, "device_index");

 if (softc->sysctl_tree == ((void*)0)) {
  printf("cdsysctlinit: unable to allocate sysctl tree\n");
  cam_periph_release(periph);
  return;
 }





 SYSCTL_ADD_PROC(&softc->sysctl_ctx,SYSCTL_CHILDREN(softc->sysctl_tree),
  OID_AUTO, "minimum_cmd_size", CTLTYPE_INT | CTLFLAG_RW,
  &softc->minimum_command_size, 0, cdcmdsizesysctl, "I",
  "Minimum CDB size");

 cam_periph_release(periph);
}
