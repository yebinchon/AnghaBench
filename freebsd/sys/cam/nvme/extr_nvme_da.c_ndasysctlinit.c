
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpstr2 ;
typedef int tmpstr ;
struct nda_softc {int * sysctl_tree; int sysctl_ctx; int cam_iosched; int invalidations; int * sysctl_stats_tree; int sysctl_stats_ctx; int errors; int timeouts; int trim_lbas; int trim_ranges; int trim_count; int deletes; int unmappedio; int flags; } ;
struct cam_periph {int flags; int unit_number; scalar_t__ softc; } ;


 int CAM_PERIPH_INVALID ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_U64 ;
 int NDA_FLAG_SCTX_INIT ;
 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int *,int,char*) ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,char*,int ,int ,char*) ;
 int * SYSCTL_ADD_NODE_WITH_LABEL (int *,int ,int ,char*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct cam_periph*,int ,int ,char*,char*) ;
 int SYSCTL_ADD_QUAD (int *,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_ADD_UQUAD (int *,int ,int ,char*,int ,int *,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _kern_cam_nda ;
 int cam_iosched_sysctl_init (int ,int *,int *) ;
 int cam_periph_invalidate_sysctl ;
 int cam_periph_release (struct cam_periph*) ;
 int nda_rotating_media ;
 int printf (char*) ;
 int snprintf (char*,int,char*,int) ;
 int sysctl_ctx_init (int *) ;

__attribute__((used)) static void
ndasysctlinit(void *context, int pending)
{
 struct cam_periph *periph;
 struct nda_softc *softc;
 char tmpstr[32], tmpstr2[16];

 periph = (struct cam_periph *)context;


 if ((periph->flags & CAM_PERIPH_INVALID) != 0) {
  cam_periph_release(periph);
  return;
 }

 softc = (struct nda_softc *)periph->softc;
 snprintf(tmpstr, sizeof(tmpstr), "CAM NDA unit %d", periph->unit_number);
 snprintf(tmpstr2, sizeof(tmpstr2), "%d", periph->unit_number);

 sysctl_ctx_init(&softc->sysctl_ctx);
 softc->flags |= NDA_FLAG_SCTX_INIT;
 softc->sysctl_tree = SYSCTL_ADD_NODE_WITH_LABEL(&softc->sysctl_ctx,
  SYSCTL_STATIC_CHILDREN(_kern_cam_nda), OID_AUTO, tmpstr2,
  CTLFLAG_RD, 0, tmpstr, "device_index");
 if (softc->sysctl_tree == ((void*)0)) {
  printf("ndasysctlinit: unable to allocate sysctl tree\n");
  cam_periph_release(periph);
  return;
 }

 SYSCTL_ADD_INT(&softc->sysctl_ctx, SYSCTL_CHILDREN(softc->sysctl_tree),
     OID_AUTO, "unmapped_io", CTLFLAG_RD,
     &softc->unmappedio, 0, "Unmapped I/O leaf");

 SYSCTL_ADD_QUAD(&softc->sysctl_ctx, SYSCTL_CHILDREN(softc->sysctl_tree),
     OID_AUTO, "deletes", CTLFLAG_RD,
     &softc->deletes, "Number of BIO_DELETE requests");

 SYSCTL_ADD_UQUAD(&softc->sysctl_ctx,
  SYSCTL_CHILDREN(softc->sysctl_tree), OID_AUTO,
  "trim_count", CTLFLAG_RD, &softc->trim_count,
  "Total number of unmap/dsm commands sent");
 SYSCTL_ADD_UQUAD(&softc->sysctl_ctx,
  SYSCTL_CHILDREN(softc->sysctl_tree), OID_AUTO,
  "trim_ranges", CTLFLAG_RD, &softc->trim_ranges,
  "Total number of ranges in unmap/dsm commands");
 SYSCTL_ADD_UQUAD(&softc->sysctl_ctx,
  SYSCTL_CHILDREN(softc->sysctl_tree), OID_AUTO,
  "trim_lbas", CTLFLAG_RD, &softc->trim_lbas,
  "Total lbas in the unmap/dsm commands sent");

 SYSCTL_ADD_INT(&softc->sysctl_ctx, SYSCTL_CHILDREN(softc->sysctl_tree),
     OID_AUTO, "rotating", CTLFLAG_RD, &nda_rotating_media, 1,
     "Rotating media");
 cam_iosched_sysctl_init(softc->cam_iosched, &softc->sysctl_ctx,
     softc->sysctl_tree);

 cam_periph_release(periph);
}
