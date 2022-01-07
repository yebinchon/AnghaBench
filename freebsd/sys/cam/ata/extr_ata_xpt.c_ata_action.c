
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int func_code; int status; TYPE_5__* path; } ;
struct TYPE_9__ {int cdb_len; } ;
struct TYPE_7__ {int flags; } ;
union ccb {TYPE_4__ ccb_h; TYPE_3__ csio; int cts; TYPE_1__ crcn; } ;
typedef int uint16_t ;
typedef int u_int ;
struct TYPE_8__ {int config; } ;
struct cam_ed {int flags; TYPE_2__ ident_data; int protocol; } ;
struct TYPE_11__ {struct cam_ed* device; int periph; } ;


 int ATA_PROTO_ATAPI_12 ;
 int ATA_PROTO_ATAPI_16 ;
 int ATA_PROTO_CFA ;
 int ATA_PROTO_MASK ;
 int CAM_DEV_IDENTIFY_DATA_VALID ;
 int CAM_REQ_INVALID ;
 int FALSE ;
 int PROTO_SCSI ;







 int ata_dev_advinfo (union ccb*) ;
 int ata_get_transfer_settings (int *) ;
 int ata_scan_bus (int ,union ccb*) ;
 int ata_scan_lun (int ,TYPE_5__*,int ,union ccb*) ;
 int ata_set_transfer_settings (int *,TYPE_5__*,int ) ;
 int xpt_action_default (union ccb*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ata_action(union ccb *start_ccb)
{

 switch (start_ccb->ccb_h.func_code) {
 case 128:
 {
  ata_set_transfer_settings(&start_ccb->cts,
        start_ccb->ccb_h.path,
                        FALSE);
  break;
 }
 case 132:
 case 130:
  ata_scan_bus(start_ccb->ccb_h.path->periph, start_ccb);
  break;
 case 131:
  ata_scan_lun(start_ccb->ccb_h.path->periph,
         start_ccb->ccb_h.path, start_ccb->crcn.flags,
         start_ccb);
  break;
 case 133:
 {
  ata_get_transfer_settings(&start_ccb->cts);
  break;
 }
 case 129:
 {
  struct cam_ed *device;
  u_int maxlen = 0;

  device = start_ccb->ccb_h.path->device;
  if (device->protocol == PROTO_SCSI &&
      (device->flags & CAM_DEV_IDENTIFY_DATA_VALID)) {
   uint16_t p =
       device->ident_data.config & ATA_PROTO_MASK;

   maxlen =
       (device->ident_data.config == ATA_PROTO_CFA) ? 0 :
       (p == ATA_PROTO_ATAPI_16) ? 16 :
       (p == ATA_PROTO_ATAPI_12) ? 12 : 0;
  }
  if (start_ccb->csio.cdb_len > maxlen) {
   start_ccb->ccb_h.status = CAM_REQ_INVALID;
   xpt_done(start_ccb);
   break;
  }
  xpt_action_default(start_ccb);
  break;
 }
 case 134:
 {
  ata_dev_advinfo(start_ccb);
  break;
 }
 default:
  xpt_action_default(start_ccb);
  break;
 }
}
