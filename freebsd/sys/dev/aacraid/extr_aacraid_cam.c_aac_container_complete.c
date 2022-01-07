
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
union ccb {TYPE_2__ ccb_h; } ;
typedef scalar_t__ u_int32_t ;
struct aac_command {int cm_flags; TYPE_1__* cm_fib; union ccb* cm_ccb; int cm_sc; } ;
struct TYPE_3__ {scalar_t__ data; } ;


 int AAC_CMD_RESET ;
 int CAM_BUSY ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_BUS_RESET ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 scalar_t__ ST_NOT_READY ;
 scalar_t__ ST_OK ;
 int aacraid_release_command (struct aac_command*) ;
 int fwprintf (int ,char*,char*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
aac_container_complete(struct aac_command *cm)
{
 union ccb *ccb;
 u_int32_t status;

 fwprintf(cm->cm_sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 ccb = cm->cm_ccb;
 status = ((u_int32_t *)cm->cm_fib->data)[0];

 if (cm->cm_flags & AAC_CMD_RESET) {
  ccb->ccb_h.status = CAM_SCSI_BUS_RESET;
 } else if (status == ST_OK) {
  ccb->ccb_h.status = CAM_REQ_CMP;
 } else if (status == ST_NOT_READY) {
  ccb->ccb_h.status = CAM_BUSY;
 } else {
  ccb->ccb_h.status = CAM_REQ_CMP_ERR;
 }

 aacraid_release_command(cm);
 xpt_done(ccb);
}
