
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scsi_inquiry_data {int spi3data; } ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {scalar_t__ valid; } ;
struct TYPE_8__ {int func_code; } ;
struct ccb_trans_settings {int transport_version; int protocol_version; TYPE_3__ xport_specific; TYPE_2__ proto_specific; int protocol; int transport; int type; TYPE_4__ ccb_h; } ;
struct ccb_pathinq {int protocol_version; int transport_version; int transport; TYPE_4__ ccb_h; } ;
struct cam_path {struct cam_ed* device; TYPE_1__* target; } ;
struct cam_ed {int flags; int protocol_version; int transport_version; int protocol; int transport; struct scsi_inquiry_data inq_data; } ;
struct TYPE_5__ {int ed_entries; } ;


 int CAM_DEV_INQUIRY_DATA_VALID ;
 int CAM_PRIORITY_NONE ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int PROTO_SCSI ;
 int SID_ANSI_REV (struct scsi_inquiry_data*) ;
 int SID_SPI_MASK ;
 struct cam_ed* TAILQ_FIRST (int *) ;
 struct cam_ed* TAILQ_NEXT (struct cam_ed*,int ) ;
 int XPORT_SPI ;
 int XPT_PATH_INQ ;
 int XPT_SET_TRAN_SETTINGS ;
 int links ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_4__*,struct cam_path*,int ) ;

__attribute__((used)) static void
scsi_devise_transport(struct cam_path *path)
{
 struct ccb_pathinq cpi;
 struct ccb_trans_settings cts;
 struct scsi_inquiry_data *inq_buf;


 xpt_setup_ccb(&cpi.ccb_h, path, CAM_PRIORITY_NONE);
 cpi.ccb_h.func_code = XPT_PATH_INQ;
 xpt_action((union ccb *)&cpi);

 inq_buf = ((void*)0);
 if ((path->device->flags & CAM_DEV_INQUIRY_DATA_VALID) != 0)
  inq_buf = &path->device->inq_data;
 path->device->protocol = PROTO_SCSI;
 path->device->protocol_version =
     inq_buf != ((void*)0) ? SID_ANSI_REV(inq_buf) : cpi.protocol_version;
 path->device->transport = cpi.transport;
 path->device->transport_version = cpi.transport_version;





 if (inq_buf != ((void*)0)) {
  if (path->device->transport == XPORT_SPI
   && (inq_buf->spi3data & SID_SPI_MASK) == 0
   && path->device->transport_version > 2)
   path->device->transport_version = 2;
 } else {
  struct cam_ed* otherdev;

  for (otherdev = TAILQ_FIRST(&path->target->ed_entries);
       otherdev != ((void*)0);
       otherdev = TAILQ_NEXT(otherdev, links)) {
   if (otherdev != path->device)
    break;
  }

  if (otherdev != ((void*)0)) {




   path->device->protocol_version =
       otherdev->protocol_version;
   path->device->transport_version =
       otherdev->transport_version;
  } else {

   path->device->protocol_version = 2;
   if (path->device->transport == XPORT_SPI)
    path->device->transport_version = 2;
   else
    path->device->transport_version = 0;
  }
 }
 xpt_setup_ccb(&cts.ccb_h, path, CAM_PRIORITY_NONE);
 cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
 cts.type = CTS_TYPE_CURRENT_SETTINGS;
 cts.transport = path->device->transport;
 cts.transport_version = path->device->transport_version;
 cts.protocol = path->device->protocol;
 cts.protocol_version = path->device->protocol_version;
 cts.proto_specific.valid = 0;
 cts.xport_specific.valid = 0;
 xpt_action((union ccb *)&cts);
}
