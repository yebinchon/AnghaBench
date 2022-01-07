
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_lun; int target_id; int path_id; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct ccb_hdr {int dummy; } ;
struct cam_device {int target_lun; int target_id; int path_id; } ;


 int bzero (TYPE_1__*,int) ;
 scalar_t__ malloc (int) ;

union ccb *
cam_getccb(struct cam_device *dev)
{
 union ccb *ccb;

 ccb = (union ccb *)malloc(sizeof(union ccb));
 if (ccb != ((void*)0)) {
  bzero(&ccb->ccb_h, sizeof(struct ccb_hdr));
  ccb->ccb_h.path_id = dev->path_id;
  ccb->ccb_h.target_id = dev->target_id;
  ccb->ccb_h.target_lun = dev->target_lun;
 }

 return(ccb);
}
