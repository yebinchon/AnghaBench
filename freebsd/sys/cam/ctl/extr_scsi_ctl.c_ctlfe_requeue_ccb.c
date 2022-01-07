
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func_code; int flags; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mtx {int dummy; } ;
struct ctlfe_lun_softc {int inot_list; int atio_list; } ;
struct cam_periph {int flags; int path; scalar_t__ softc; } ;
struct TYPE_5__ {int le; } ;


 int CAM_PERIPH_INVALID ;
 int CAM_PRIORITY_NONE ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 scalar_t__ XPT_ACCEPT_TARGET_IO ;
 struct mtx* cam_periph_mtx (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int ctlfe_free_ccb (struct cam_periph*,union ccb*) ;
 int mtx_unlock (struct mtx*) ;
 TYPE_2__ periph_links ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb_flags (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
ctlfe_requeue_ccb(struct cam_periph *periph, union ccb *ccb, int unlock)
{
 struct ctlfe_lun_softc *softc;
 struct mtx *mtx;

 if (periph->flags & CAM_PERIPH_INVALID) {
  mtx = cam_periph_mtx(periph);
  ctlfe_free_ccb(periph, ccb);
  if (unlock)
   mtx_unlock(mtx);
  return;
 }
 softc = (struct ctlfe_lun_softc *)periph->softc;
 if (ccb->ccb_h.func_code == XPT_ACCEPT_TARGET_IO)
  LIST_INSERT_HEAD(&softc->atio_list, &ccb->ccb_h, periph_links.le);
 else
  LIST_INSERT_HEAD(&softc->inot_list, &ccb->ccb_h, periph_links.le);
 if (unlock)
  cam_periph_unlock(periph);






 xpt_setup_ccb_flags(&ccb->ccb_h, periph->path, CAM_PRIORITY_NONE,
     ccb->ccb_h.flags);

 xpt_action(ccb);
}
