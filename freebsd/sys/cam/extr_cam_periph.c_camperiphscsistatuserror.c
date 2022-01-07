
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int retry_count; int path; } ;
struct TYPE_4__ {int scsi_status; } ;
union ccb {TYPE_2__ ccb_h; TYPE_1__ csio; } ;
typedef int u_int32_t ;
struct TYPE_6__ {int func_code; } ;
struct ccb_getdevstats {int dev_active; int dev_openings; int mintags; TYPE_3__ ccb_h; } ;
struct cam_periph {int flags; } ;
typedef int cam_flags ;


 int CAM_PERIPH_INVALID ;
 int CAM_PRIORITY_NORMAL ;
 int EIO ;
 int ERESTART ;
 int RELSIM_ADJUST_OPENINGS ;
 int RELSIM_RELEASE_AFTER_CMDCMPLT ;
 int RELSIM_RELEASE_AFTER_TIMEOUT ;
 int SF_RETRY_BUSY ;
 int SSQ_PRINT_SENSE ;
 int XPT_GDEV_STATS ;
 int camperiphscsisenseerror (union ccb*,union ccb**,int ,int,int*,int*,int*,int*,char const**) ;
 int xpt_action (union ccb*) ;
 struct cam_periph* xpt_path_periph (int ) ;
 int xpt_setup_ccb (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int
camperiphscsistatuserror(union ccb *ccb, union ccb **orig_ccb,
    cam_flags camflags, u_int32_t sense_flags,
    int *openings, u_int32_t *relsim_flags,
    u_int32_t *timeout, u_int32_t *action, const char **action_string)
{
 struct cam_periph *periph;
 int error;

 switch (ccb->csio.scsi_status) {
 case 130:
 case 133:
 case 132:
 case 131:
  error = 0;
  break;
 case 134:
 case 135:
  error = camperiphscsisenseerror(ccb, orig_ccb,
             camflags,
             sense_flags,
             openings,
             relsim_flags,
             timeout,
             action,
             action_string);
  break;
 case 129:
 {

  struct ccb_getdevstats cgds;





  xpt_setup_ccb(&cgds.ccb_h,
         ccb->ccb_h.path,
         CAM_PRIORITY_NORMAL);
  cgds.ccb_h.func_code = XPT_GDEV_STATS;
  xpt_action((union ccb *)&cgds);





  if (cgds.dev_active != 0) {
   int total_openings;
   total_openings = cgds.dev_active + cgds.dev_openings;
   *openings = cgds.dev_active;
   if (*openings < cgds.mintags)
    *openings = cgds.mintags;
   if (*openings < total_openings)
    *relsim_flags = RELSIM_ADJUST_OPENINGS;
   else {
    *relsim_flags = RELSIM_RELEASE_AFTER_CMDCMPLT;
   }
   *timeout = 0;
   error = ERESTART;
   *action &= ~SSQ_PRINT_SENSE;
   break;
  }

 }
 case 136:




  periph = xpt_path_periph(ccb->ccb_h.path);
  if (periph->flags & CAM_PERIPH_INVALID) {
   error = EIO;
   *action_string = "Periph was invalidated";
  } else if ((sense_flags & SF_RETRY_BUSY) != 0 ||
      ccb->ccb_h.retry_count > 0) {
   if ((sense_flags & SF_RETRY_BUSY) == 0)
    ccb->ccb_h.retry_count--;
   error = ERESTART;
   *relsim_flags = RELSIM_RELEASE_AFTER_TIMEOUT
          | RELSIM_RELEASE_AFTER_CMDCMPLT;
   *timeout = 1000;
  } else {
   error = EIO;
   *action_string = "Retries exhausted";
  }
  break;
 case 128:
 default:
  error = EIO;
  break;
 }
 return (error);
}
