
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* index; int status; char* periph_name; int unit_number; int generation; } ;
struct TYPE_3__ {int retry_count; int flags; int func_code; } ;
union ccb {TYPE_2__ cgdl; TYPE_1__ ccb_h; } ;
struct cam_device {int dummy; } ;


 int CAM_DIR_NONE ;




 int XPT_GDEVLIST ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int fprintf (int ,char*,char*,int,int,char*,char*) ;
 int stdout ;
 int strcpy (char*,char*) ;
 int warn (char*) ;

__attribute__((used)) static int
getdevlist(struct cam_device *device)
{
 union ccb *ccb;
 char status[32];
 int error = 0;

 ccb = cam_getccb(device);

 ccb->ccb_h.func_code = XPT_GDEVLIST;
 ccb->ccb_h.flags = CAM_DIR_NONE;
 ccb->ccb_h.retry_count = 1;
 ccb->cgdl.index = 0;
 ccb->cgdl.status = 128;
 while (ccb->cgdl.status == 128) {
  if (cam_send_ccb(device, ccb) < 0) {
   warn("error getting device list");
   cam_freeccb(ccb);
   return (1);
  }

  status[0] = '\0';

  switch (ccb->cgdl.status) {
   case 128:
    strcpy(status, "MORE");
    break;
   case 130:
    strcpy(status, "LAST");
    break;
   case 129:
    strcpy(status, "CHANGED");
    break;
   case 131:
    strcpy(status, "ERROR");
    error = 1;
    break;
  }

  fprintf(stdout, "%s%d:  generation: %d index: %d status: %s\n",
   ccb->cgdl.periph_name,
   ccb->cgdl.unit_number,
   ccb->cgdl.generation,
   ccb->cgdl.index,
   status);





  if (ccb->cgdl.status == 129)
   ccb->cgdl.index = 0;
 }

 cam_freeccb(ccb);

 return (error);
}
