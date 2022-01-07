
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; struct cam_path* path; int func_code; int retry_count; } ;
struct TYPE_3__ {scalar_t__ flags; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ crcn; } ;
typedef scalar_t__ u_int32_t ;
struct cam_periph {int flags; } ;
struct cam_path {int dummy; } ;
typedef int lun_id_t ;
typedef int cam_status ;
typedef int cam_flags ;


 int AC_LOST_DEVICE ;
 int AC_UNIT_ATTENTION ;






 scalar_t__ CAM_DEBUGGED (struct cam_path*,int ) ;
 int CAM_DEBUG_INFO ;

 int CAM_DEV_QFRZN ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;


 int CAM_LUN_WILDCARD ;



 int CAM_PERIPH_INVALID ;
 int CAM_RETRY_SELTO ;




 int CAM_STATUS_MASK ;






 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int ERESTART ;
 scalar_t__ RELSIM_RELEASE_AFTER_TIMEOUT ;
 scalar_t__ SF_NO_PRINT ;
 scalar_t__ SF_NO_RETRY ;
 scalar_t__ SF_PRINT_ALWAYS ;
 scalar_t__ SSQ_LOST ;
 scalar_t__ SSQ_PRINT_SENSE ;
 scalar_t__ SSQ_RESCAN ;
 scalar_t__ SSQ_UA ;
 int XPT_SCAN_TGT ;
 int cam_error_print (union ccb*,int ,int ) ;
 int cam_periph_devctl_notify (union ccb*) ;
 int cam_release_devq (struct cam_path*,scalar_t__,int,scalar_t__,int ) ;
 int camperiphscsistatuserror (union ccb*,union ccb**,int,scalar_t__,int*,scalar_t__*,scalar_t__*,scalar_t__*,char const**) ;
 scalar_t__ periph_busy_delay ;
 scalar_t__ periph_noresrc_delay ;
 scalar_t__ periph_selto_delay ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_async (int ,struct cam_path*,union ccb*) ;
 int const xpt_create_path (struct cam_path**,struct cam_periph*,int ,int ,int ) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_lun_id (struct cam_path*) ;
 int xpt_path_path_id (struct cam_path*) ;
 struct cam_periph* xpt_path_periph (struct cam_path*) ;
 int xpt_path_target_id (struct cam_path*) ;
 int xpt_print (struct cam_path*,char*,...) ;
 int xpt_rescan (union ccb*) ;

int
cam_periph_error(union ccb *ccb, cam_flags camflags,
   u_int32_t sense_flags)
{
 struct cam_path *newpath;
 union ccb *orig_ccb, *scan_ccb;
 struct cam_periph *periph;
 const char *action_string;
 cam_status status;
 int frozen, error, openings, devctl_err;
 u_int32_t action, relsim_flags, timeout;

 action = SSQ_PRINT_SENSE;
 periph = xpt_path_periph(ccb->ccb_h.path);
 action_string = ((void*)0);
 status = ccb->ccb_h.status;
 frozen = (status & CAM_DEV_QFRZN) != 0;
 status &= CAM_STATUS_MASK;
 devctl_err = openings = relsim_flags = timeout = 0;
 orig_ccb = ccb;


 switch (ccb->ccb_h.status & CAM_STATUS_MASK) {
 case 154:
 case 144:
 case 142:
 case 140:
 case 128:
 case 153:
 case 136:
 case 158:
 case 134:
  devctl_err++;
  break;
 default:
  break;
 }

 switch (status) {
 case 143:
  error = 0;
  action &= ~SSQ_PRINT_SENSE;
  break;
 case 136:
  error = camperiphscsistatuserror(ccb, &orig_ccb,
      camflags, sense_flags, &openings, &relsim_flags,
      &timeout, &action, &action_string);
  break;
 case 157:
  error = EIO;
  break;
 case 132:
 case 131:
 case 149:

  error = EIO;
  break;
 case 135:
  if ((camflags & CAM_RETRY_SELTO) != 0) {
   if (ccb->ccb_h.retry_count > 0 &&
       (periph->flags & CAM_PERIPH_INVALID) == 0) {
    ccb->ccb_h.retry_count--;
    error = ERESTART;





    relsim_flags = RELSIM_RELEASE_AFTER_TIMEOUT;
    timeout = periph_selto_delay;
    break;
   }
   action_string = "Retries exhausted";
  }

 case 152:
  error = ENXIO;
  action = SSQ_LOST;
  break;
 case 141:
 case 147:
 case 148:
 case 146:
 case 139:
 case 150:
 case 133:
 case 151:
  error = EINVAL;
  break;
 case 137:
 case 156:
 case 145:

  if (periph->flags & CAM_PERIPH_INVALID) {
   action_string = "Periph was invalidated";
   error = EIO;
  } else if (sense_flags & SF_NO_RETRY) {
   error = EIO;
   action_string = "Retry was blocked";
  } else {
   error = ERESTART;
   action &= ~SSQ_PRINT_SENSE;
  }
  break;
 case 138:

  timeout = periph_noresrc_delay;

 case 155:
  if (timeout == 0) {

   timeout = periph_busy_delay;
  }
  relsim_flags = RELSIM_RELEASE_AFTER_TIMEOUT;

 case 158:
 case 142:
 case 154:
 case 129:
 case 130:
 case 153:
 default:
  if (periph->flags & CAM_PERIPH_INVALID) {
   error = EIO;
   action_string = "Periph was invalidated";
  } else if (ccb->ccb_h.retry_count == 0) {
   error = EIO;
   action_string = "Retries exhausted";
  } else if (sense_flags & SF_NO_RETRY) {
   error = EIO;
   action_string = "Retry was blocked";
  } else {
   ccb->ccb_h.retry_count--;
   error = ERESTART;
  }
  break;
 }

 if ((sense_flags & SF_PRINT_ALWAYS) ||
     CAM_DEBUGGED(ccb->ccb_h.path, CAM_DEBUG_INFO))
  action |= SSQ_PRINT_SENSE;
 else if (sense_flags & SF_NO_PRINT)
  action &= ~SSQ_PRINT_SENSE;
 if ((action & SSQ_PRINT_SENSE) != 0)
  cam_error_print(orig_ccb, CAM_ESF_ALL, CAM_EPF_ALL);
 if (error != 0 && (action & SSQ_PRINT_SENSE) != 0) {
  if (error != ERESTART) {
   if (action_string == ((void*)0))
    action_string = "Unretryable error";
   xpt_print(ccb->ccb_h.path, "Error %d, %s\n",
       error, action_string);
  } else if (action_string != ((void*)0))
   xpt_print(ccb->ccb_h.path, "%s\n", action_string);
  else {
   xpt_print(ccb->ccb_h.path,
       "Retrying command, %d more tries remain\n",
       ccb->ccb_h.retry_count);
  }
 }

 if (devctl_err && (error != 0 || (action & SSQ_PRINT_SENSE) != 0))
  cam_periph_devctl_notify(orig_ccb);

 if ((action & SSQ_LOST) != 0) {
  lun_id_t lun_id;







  if (status == 135)
   lun_id = CAM_LUN_WILDCARD;
  else
   lun_id = xpt_path_lun_id(ccb->ccb_h.path);


  if (xpt_create_path(&newpath, periph,
        xpt_path_path_id(ccb->ccb_h.path),
        xpt_path_target_id(ccb->ccb_h.path),
        lun_id) == 143) {





   xpt_async(AC_LOST_DEVICE, newpath, ((void*)0));
   xpt_free_path(newpath);
  }
 }


 if ((action & SSQ_UA) != 0)
  xpt_async(AC_UNIT_ATTENTION, orig_ccb->ccb_h.path, orig_ccb);


 if ((action & SSQ_RESCAN) != 0) {
  if (xpt_create_path(&newpath, ((void*)0),
        xpt_path_path_id(ccb->ccb_h.path),
        xpt_path_target_id(ccb->ccb_h.path),
        CAM_LUN_WILDCARD) == 143) {

   scan_ccb = xpt_alloc_ccb_nowait();
   if (scan_ccb != ((void*)0)) {
    scan_ccb->ccb_h.path = newpath;
    scan_ccb->ccb_h.func_code = XPT_SCAN_TGT;
    scan_ccb->crcn.flags = 0;
    xpt_rescan(scan_ccb);
   } else {
    xpt_print(newpath,
        "Can't allocate CCB to rescan target\n");
    xpt_free_path(newpath);
   }
  }
 }


 if (error == ERESTART || error == 0) {
  if (frozen != 0)
   ccb->ccb_h.status &= ~CAM_DEV_QFRZN;
  if (error == ERESTART)
   xpt_action(ccb);
  if (frozen != 0)
   cam_release_devq(ccb->ccb_h.path,
      relsim_flags,
      openings,
      timeout,
                       0);
 }

 return (error);
}
