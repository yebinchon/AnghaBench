
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccb_hdr {scalar_t__ func_code; int status; struct targ_cmd_descr* targ_descr; int cbfcnp; } ;
union ccb {struct ccb_hdr ccb_h; } ;
struct targ_softc {int pending_ccb_queue; int path; int maxio; } ;
struct cam_periph_map_info {scalar_t__ num_bufs_used; } ;
struct targ_cmd_descr {struct cam_periph_map_info mapinfo; } ;
struct TYPE_2__ {int tqe; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_PERIPH ;
 int CAM_REQ_CMP_ERR ;
 int TAILQ_INSERT_TAIL (int *,struct ccb_hdr*,int ) ;
 scalar_t__ XPT_CONT_TARGET_IO ;
 scalar_t__ XPT_DEV_MATCH ;
 scalar_t__ XPT_FC_IS_QUEUED (union ccb*) ;
 int cam_periph_mapmem (union ccb*,struct cam_periph_map_info*,int ) ;
 TYPE_1__ periph_links ;
 int targdone ;
 int xpt_action (union ccb*) ;

__attribute__((used)) static int
targsendccb(struct targ_softc *softc, union ccb *ccb,
     struct targ_cmd_descr *descr)
{
 struct cam_periph_map_info *mapinfo;
 struct ccb_hdr *ccb_h;
 int error;

 ccb_h = &ccb->ccb_h;
 mapinfo = &descr->mapinfo;
 mapinfo->num_bufs_used = 0;







 ccb_h->cbfcnp = targdone;
 ccb_h->targ_descr = descr;

 if ((ccb_h->func_code == XPT_CONT_TARGET_IO) ||
     (ccb_h->func_code == XPT_DEV_MATCH)) {

  error = cam_periph_mapmem(ccb, mapinfo, softc->maxio);





  if (error) {
   ccb_h->status = CAM_REQ_CMP_ERR;
   mapinfo->num_bufs_used = 0;
   return (error);
  }
 }





 CAM_DEBUG(softc->path, CAM_DEBUG_PERIPH, ("sendccb %p\n", ccb));
 if (XPT_FC_IS_QUEUED(ccb)) {
  TAILQ_INSERT_TAIL(&softc->pending_ccb_queue, ccb_h,
      periph_links.tqe);
 }
 xpt_action(ccb);

 return (0);
}
