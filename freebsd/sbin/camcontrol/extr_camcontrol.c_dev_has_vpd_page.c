
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int flags; } ;
union ccb {TYPE_1__ ccb_h; int csio; } ;
typedef scalar_t__ uint8_t ;
typedef int u_int8_t ;
typedef int sup_pages ;
struct scsi_vpd_supported_page_list {int length; scalar_t__* list; } ;
struct cam_device {int dummy; } ;


 int CAM_DEV_QFRZDIS ;
 int CAM_EPF_ALL ;
 int CAM_ESF_ALL ;
 int CAM_PASS_ERR_RECOVER ;
 int CAM_REQ_CMP ;
 int CAM_STATUS_MASK ;
 int CCB_CLEAR_ALL_EXCEPT_HDR (int *) ;
 int MSG_SIMPLE_Q_TAG ;
 int SSD_FULL_SIZE ;
 int SVPD_SUPPORTED_PAGE_LIST ;
 int bzero (struct scsi_vpd_supported_page_list*,int) ;
 int cam_error_print (struct cam_device*,union ccb*,int ,int ,int ) ;
 int cam_freeccb (union ccb*) ;
 union ccb* cam_getccb (struct cam_device*) ;
 scalar_t__ cam_send_ccb (struct cam_device*,union ccb*) ;
 int scsi_inquiry (int *,int,int *,int ,int *,int,int,int ,int ,int) ;
 int stderr ;
 int warn (char*) ;

int
dev_has_vpd_page(struct cam_device *dev, uint8_t page_id, int retry_count,
   int timeout, int verbosemode)
{
 union ccb *ccb = ((void*)0);
 struct scsi_vpd_supported_page_list sup_pages;
 int i;
 int retval = 0;

 ccb = cam_getccb(dev);
 if (ccb == ((void*)0)) {
  warn("Unable to allocate CCB");
  retval = -1;
  goto bailout;
 }


 CCB_CLEAR_ALL_EXCEPT_HDR(&ccb->csio);

 bzero(&sup_pages, sizeof(sup_pages));

 scsi_inquiry(&ccb->csio,
                   retry_count,
                  ((void*)0),
                        MSG_SIMPLE_Q_TAG,
                     (u_int8_t *)&sup_pages,
                     sizeof(sup_pages),
                  1,
                       SVPD_SUPPORTED_PAGE_LIST,
                       SSD_FULL_SIZE,
                     timeout ? timeout : 5000);


 ccb->ccb_h.flags |= CAM_DEV_QFRZDIS;

 if (retry_count != 0)
  ccb->ccb_h.flags |= CAM_PASS_ERR_RECOVER;

 if (cam_send_ccb(dev, ccb) < 0) {
  cam_freeccb(ccb);
  ccb = ((void*)0);
  retval = -1;
  goto bailout;
 }

 if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_CMP) {
  if (verbosemode != 0)
   cam_error_print(dev, ccb, CAM_ESF_ALL,
     CAM_EPF_ALL, stderr);
  retval = -1;
  goto bailout;
 }

 for (i = 0; i < sup_pages.length; i++) {
  if (sup_pages.list[i] == page_id) {
   retval = 1;
   goto bailout;
  }
 }
bailout:
 if (ccb != ((void*)0))
  cam_freeccb(ccb);

 return (retval);
}
