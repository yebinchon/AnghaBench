
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_trans_settings_scsi {int valid; int flags; } ;
struct ccb_trans_settings_ata {int valid; int flags; } ;
struct TYPE_6__ {struct ccb_trans_settings_scsi scsi; struct ccb_trans_settings_ata ata; } ;
struct TYPE_5__ {TYPE_1__* path; } ;
struct ccb_trans_settings {scalar_t__ type; int transport_version; int transport; TYPE_3__ proto_specific; int protocol; int protocol_version; TYPE_2__ ccb_h; } ;
struct cam_ed {int flags; int inq_flags; int transport_version; int transport; int protocol_version; int protocol; } ;
struct TYPE_4__ {struct cam_ed* device; } ;


 int CAM_DEV_TAG_AFTER_COUNT ;
 int CTS_ATA_FLAGS_TAG_ENB ;
 int CTS_ATA_VALID_TQ ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 scalar_t__ CTS_TYPE_USER_SETTINGS ;
 int PROTO_ATA ;
 int PROTO_SCSI ;
 int PROTO_UNKNOWN ;
 int PROTO_UNSPECIFIED ;
 int SID_CmdQue ;
 int XPORT_UNKNOWN ;
 int XPORT_UNSPECIFIED ;
 int xpt_action_default (union ccb*) ;

__attribute__((used)) static void
ata_get_transfer_settings(struct ccb_trans_settings *cts)
{
 struct ccb_trans_settings_ata *ata;
 struct ccb_trans_settings_scsi *scsi;
 struct cam_ed *device;

 device = cts->ccb_h.path->device;
 xpt_action_default((union ccb *)cts);

 if (cts->protocol == PROTO_UNKNOWN ||
     cts->protocol == PROTO_UNSPECIFIED) {
  cts->protocol = device->protocol;
  cts->protocol_version = device->protocol_version;
 }

 if (cts->protocol == PROTO_ATA) {
  ata = &cts->proto_specific.ata;
  if ((ata->valid & CTS_ATA_VALID_TQ) == 0) {
   ata->valid |= CTS_ATA_VALID_TQ;
   if (cts->type == CTS_TYPE_USER_SETTINGS ||
       (device->flags & CAM_DEV_TAG_AFTER_COUNT) != 0 ||
       (device->inq_flags & SID_CmdQue) != 0)
    ata->flags |= CTS_ATA_FLAGS_TAG_ENB;
  }
 }
 if (cts->protocol == PROTO_SCSI) {
  scsi = &cts->proto_specific.scsi;
  if ((scsi->valid & CTS_SCSI_VALID_TQ) == 0) {
   scsi->valid |= CTS_SCSI_VALID_TQ;
   if (cts->type == CTS_TYPE_USER_SETTINGS ||
       (device->flags & CAM_DEV_TAG_AFTER_COUNT) != 0 ||
       (device->inq_flags & SID_CmdQue) != 0)
    scsi->flags |= CTS_SCSI_FLAGS_TAG_ENB;
  }
 }

 if (cts->transport == XPORT_UNKNOWN ||
     cts->transport == XPORT_UNSPECIFIED) {
  cts->transport = device->transport;
  cts->transport_version = device->transport_version;
 }
}
