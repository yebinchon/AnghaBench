
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scsi_inquiry_data {int version; } ;
struct TYPE_2__ {scalar_t__ status; int func_code; } ;
struct ccb_getdev {struct scsi_inquiry_data inq_data; TYPE_1__ ccb_h; } ;
struct cam_periph {int path; } ;


 int CAM_PRIORITY_NORMAL ;
 scalar_t__ CAM_REQ_CMP ;
 int MA_OWNED ;
 int XPT_GDEV_TYPE ;
 int cam_periph_assert (struct cam_periph*,int ) ;
 int xpt_action (union ccb*) ;
 scalar_t__ xpt_alloc_ccb_nowait () ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
chscsiversion(struct cam_periph *periph)
{
 struct scsi_inquiry_data *inq_data;
 struct ccb_getdev *cgd;
 int dev_scsi_version;

 cam_periph_assert(periph, MA_OWNED);
 if ((cgd = (struct ccb_getdev *)xpt_alloc_ccb_nowait()) == ((void*)0))
  return (-1);



 xpt_setup_ccb(&cgd->ccb_h,
        periph->path,
        CAM_PRIORITY_NORMAL);
 cgd->ccb_h.func_code = XPT_GDEV_TYPE;
 xpt_action((union ccb *)cgd);

 if (cgd->ccb_h.status != CAM_REQ_CMP) {
  xpt_free_ccb((union ccb *)cgd);
  return -1;
 }

 inq_data = &cgd->inq_data;
 dev_scsi_version = inq_data->version;
 xpt_free_ccb((union ccb *)cgd);

 return dev_scsi_version;
}
