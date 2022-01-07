
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct ccb_scsiio {int scsi_status; TYPE_2__ ccb_h; scalar_t__ dxfer_len; } ;
struct TYPE_3__ {scalar_t__ targ_descr; } ;
struct ccb_accept_tio {int init_id; TYPE_1__ ccb_h; } ;
struct atio_descr {int cdb; } ;


 int CAM_DIR_MASK ;
 int CAM_DIR_NONE ;
 int CAM_SEND_STATUS ;
 int SCSI_STATUS_OK ;
 int cdb_debug (int ,char*,int ) ;
 scalar_t__ debug ;

__attribute__((used)) static int
tcmd_null_ok(struct ccb_accept_tio *atio, struct ccb_scsiio *ctio)
{
 if (debug) {
  struct atio_descr *a_descr;

  a_descr = (struct atio_descr *)atio->ccb_h.targ_descr;
  cdb_debug(a_descr->cdb, "Sending null ok to %u : ", atio->init_id);
 }

 ctio->dxfer_len = 0;
 ctio->ccb_h.flags &= ~CAM_DIR_MASK;
 ctio->ccb_h.flags |= CAM_DIR_NONE | CAM_SEND_STATUS;
 ctio->scsi_status = SCSI_STATUS_OK;
 return (0);
}
