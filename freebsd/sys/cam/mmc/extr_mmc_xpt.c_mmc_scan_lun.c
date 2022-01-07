
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; } ;
union ccb {TYPE_2__ ccb_h; } ;
struct TYPE_3__ {scalar_t__ status; } ;
struct ccb_pathinq {TYPE_1__ ccb_h; } ;
struct cam_periph {int flags; } ;
struct cam_path {int dummy; } ;
typedef scalar_t__ cam_status ;
typedef int cam_flags ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_INFO ;
 int CAM_DEBUG_TRACE ;
 scalar_t__ CAM_LUN_WILDCARD ;
 int CAM_PERIPH_BIO ;
 int CAM_PERIPH_INVALID ;
 scalar_t__ CAM_REQ_CMP ;
 void* CAM_REQ_CMP_ERR ;
 scalar_t__ cam_periph_alloc (int ,int *,int ,int ,char*,int ,struct cam_path*,int *,int ,union ccb*) ;
 struct cam_periph* cam_periph_find (struct cam_path*,char*) ;
 int mmcprobe_cleanup ;
 int mmcprobe_register ;
 int mmcprobe_start ;
 int xpt_done (union ccb*) ;
 int xpt_path_inq (struct ccb_pathinq*,struct cam_path*) ;
 int xpt_path_lock (struct cam_path*) ;
 scalar_t__ xpt_path_lun_id (struct cam_path*) ;
 scalar_t__ xpt_path_owned (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_print (struct cam_path*,char*) ;

__attribute__((used)) static void
mmc_scan_lun(struct cam_periph *periph, struct cam_path *path,
      cam_flags flags, union ccb *request_ccb)
{
 struct ccb_pathinq cpi;
 cam_status status;
 struct cam_periph *old_periph;
 int lock;

 CAM_DEBUG(path, CAM_DEBUG_TRACE, ("mmc_scan_lun\n"));

 xpt_path_inq(&cpi, path);

 if (cpi.ccb_h.status != CAM_REQ_CMP) {
  if (request_ccb != ((void*)0)) {
   request_ccb->ccb_h.status = cpi.ccb_h.status;
   xpt_done(request_ccb);
  }
  return;
 }

 if (xpt_path_lun_id(path) == CAM_LUN_WILDCARD) {
  CAM_DEBUG(path, CAM_DEBUG_TRACE, ("mmd_scan_lun ignoring bus\n"));
  request_ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(request_ccb);
  return;
 }

 lock = (xpt_path_owned(path) == 0);
 if (lock)
  xpt_path_lock(path);

 if ((old_periph = cam_periph_find(path, "mmcprobe")) != ((void*)0)) {
  if ((old_periph->flags & CAM_PERIPH_INVALID) == 0) {






                        CAM_DEBUG(path, CAM_DEBUG_INFO,
                                  ("Got scan request, but mmcprobe already exists\n"));
   request_ccb->ccb_h.status = CAM_REQ_CMP_ERR;
                        xpt_done(request_ccb);
  } else {
   request_ccb->ccb_h.status = CAM_REQ_CMP_ERR;
   xpt_done(request_ccb);
  }
 } else {
  xpt_print(path, " Set up the mmcprobe device...\n");

                status = cam_periph_alloc(mmcprobe_register, ((void*)0),
       mmcprobe_cleanup,
       mmcprobe_start,
       "mmcprobe",
       CAM_PERIPH_BIO,
       path, ((void*)0), 0,
       request_ccb);
                if (status != CAM_REQ_CMP) {
   xpt_print(path, "xpt_scan_lun: cam_alloc_periph "
                                  "returned an error, can't continue probe\n");
  }
  request_ccb->ccb_h.status = status;
  xpt_done(request_ccb);
 }

 if (lock)
  xpt_path_unlock(path);
}
