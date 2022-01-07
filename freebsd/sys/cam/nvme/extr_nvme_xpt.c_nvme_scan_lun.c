
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ status; int path; } ;
union ccb {TYPE_4__ ccb_h; } ;
struct TYPE_5__ {scalar_t__ status; } ;
struct ccb_pathinq {TYPE_1__ ccb_h; } ;
struct cam_periph {int flags; scalar_t__ softc; } ;
struct cam_path {int dummy; } ;
struct TYPE_6__ {int restart; int request_ccbs; } ;
typedef TYPE_2__ nvme_probe_softc ;
typedef scalar_t__ cam_status ;
typedef int cam_flags ;
struct TYPE_7__ {int tqe; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 scalar_t__ CAM_LUN_WILDCARD ;
 int CAM_PERIPH_BIO ;
 int CAM_PERIPH_INVALID ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_REQ_CMP_ERR ;
 int TAILQ_INSERT_TAIL (int *,TYPE_4__*,int ) ;
 scalar_t__ cam_periph_alloc (int ,int *,int ,int ,char*,int ,int ,int *,int ,union ccb*) ;
 struct cam_periph* cam_periph_find (struct cam_path*,char*) ;
 int nvme_probe_cleanup ;
 int nvme_probe_register ;
 int nvme_probe_start ;
 TYPE_3__ periph_links ;
 int xpt_done (union ccb*) ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;
 int xpt_path_lock (struct cam_path*) ;
 scalar_t__ xpt_path_lun_id (struct cam_path*) ;
 scalar_t__ xpt_path_owned (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_print (struct cam_path*,char*) ;

__attribute__((used)) static void
nvme_scan_lun(struct cam_periph *periph, struct cam_path *path,
      cam_flags flags, union ccb *request_ccb)
{
 struct ccb_pathinq cpi;
 cam_status status;
 struct cam_periph *old_periph;
 int lock;

 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("nvme_scan_lun\n"));

 xpt_path_inq(&cpi, path);

 if (cpi.ccb_h.status != CAM_REQ_CMP) {
  if (request_ccb != ((void*)0)) {
   request_ccb->ccb_h.status = cpi.ccb_h.status;
   xpt_done(request_ccb);
  }
  return;
 }

 if (xpt_path_lun_id(path) == CAM_LUN_WILDCARD) {
  CAM_DEBUG(path, CAM_DEBUG_TRACE, ("nvme_scan_lun ignoring bus\n"));
  request_ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(request_ccb);
  return;
 }

 lock = (xpt_path_owned(path) == 0);
 if (lock)
  xpt_path_lock(path);
 if ((old_periph = cam_periph_find(path, "nvme_probe")) != ((void*)0)) {
  if ((old_periph->flags & CAM_PERIPH_INVALID) == 0) {
   nvme_probe_softc *softc;

   softc = (nvme_probe_softc *)old_periph->softc;
   TAILQ_INSERT_TAIL(&softc->request_ccbs,
    &request_ccb->ccb_h, periph_links.tqe);
   softc->restart = 1;
   CAM_DEBUG(path, CAM_DEBUG_TRACE,
       ("restarting nvme_probe device\n"));
  } else {
   request_ccb->ccb_h.status = CAM_REQ_CMP_ERR;
   CAM_DEBUG(path, CAM_DEBUG_TRACE,
       ("Failing to restart nvme_probe device\n"));
   xpt_done(request_ccb);
  }
 } else {
  CAM_DEBUG(path, CAM_DEBUG_TRACE,
      ("Adding nvme_probe device\n"));
  status = cam_periph_alloc(nvme_probe_register, ((void*)0), nvme_probe_cleanup,
       nvme_probe_start, "nvme_probe",
       CAM_PERIPH_BIO,
       request_ccb->ccb_h.path, ((void*)0), 0,
       request_ccb);

  if (status != CAM_REQ_CMP) {
   xpt_print(path, "xpt_scan_lun: cam_alloc_periph "
       "returned an error, can't continue probe\n");
   request_ccb->ccb_h.status = status;
   xpt_done(request_ccb);
  }
 }
 if (lock)
  xpt_path_unlock(path);
}
