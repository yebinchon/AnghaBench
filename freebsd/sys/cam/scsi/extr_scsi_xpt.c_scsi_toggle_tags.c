
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ flags; int valid; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;
struct ccb_trans_settings {TYPE_2__ proto_specific; int transport_version; int transport; int protocol_version; int protocol; int ccb_h; } ;
struct cam_path {struct cam_ed* device; } ;
struct cam_ed {int flags; int inq_flags; } ;


 int CAM_DEV_TAG_AFTER_COUNT ;
 int CAM_PRIORITY_NONE ;
 scalar_t__ CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int PROTO_SCSI ;
 int PROTO_VERSION_UNSPECIFIED ;
 int SID_CmdQue ;
 int SID_Sync ;
 int SID_WBus16 ;
 int SID_WBus32 ;
 int TRUE ;
 int XPORT_UNSPECIFIED ;
 int XPORT_VERSION_UNSPECIFIED ;
 int scsi_set_transfer_settings (struct ccb_trans_settings*,struct cam_path*,int ) ;
 int xpt_setup_ccb (int *,struct cam_path*,int ) ;

__attribute__((used)) static void
scsi_toggle_tags(struct cam_path *path)
{
 struct cam_ed *dev;
 dev = path->device;
 if ((dev->flags & CAM_DEV_TAG_AFTER_COUNT) != 0
  || ((dev->inq_flags & SID_CmdQue) != 0
    && (dev->inq_flags & (SID_Sync|SID_WBus16|SID_WBus32)) != 0)) {
  struct ccb_trans_settings cts;

  xpt_setup_ccb(&cts.ccb_h, path, CAM_PRIORITY_NONE);
  cts.protocol = PROTO_SCSI;
  cts.protocol_version = PROTO_VERSION_UNSPECIFIED;
  cts.transport = XPORT_UNSPECIFIED;
  cts.transport_version = XPORT_VERSION_UNSPECIFIED;
  cts.proto_specific.scsi.flags = 0;
  cts.proto_specific.scsi.valid = CTS_SCSI_VALID_TQ;
  scsi_set_transfer_settings(&cts, path,
                       TRUE);
  cts.proto_specific.scsi.flags = CTS_SCSI_FLAGS_TAG_ENB;
  scsi_set_transfer_settings(&cts, path,
                       TRUE);
 }
}
