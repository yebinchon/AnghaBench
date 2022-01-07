
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int func_code; int status; int path; } ;
struct TYPE_3__ {int status; } ;
struct ccb_pathinq {int version_num; TYPE_1__ ccb_h; int transport_version; int transport; int protocol_version; int protocol; int base_transfer_speed; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_lun; int max_target; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_pathinq cpi; } ;
struct cam_sim {char* sim_name; int bus_id; int unit_number; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_REQ_CMP ;
 int CAM_REQ_INVALID ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int PROTO_UNSPECIFIED ;
 int PROTO_VERSION_UNSPECIFIED ;
 int SIM_IDLEN ;
 int XPORT_UNSPECIFIED ;
 int XPORT_VERSION_UNSPECIFIED ;

 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
xptaction(struct cam_sim *sim, union ccb *work_ccb)
{
 CAM_DEBUG(work_ccb->ccb_h.path, CAM_DEBUG_TRACE, ("xptaction\n"));

 switch (work_ccb->ccb_h.func_code) {

 case 128:
 {
  struct ccb_pathinq *cpi;

  cpi = &work_ccb->cpi;
  cpi->version_num = 1;
  cpi->hba_inquiry = 0;
  cpi->target_sprt = 0;
  cpi->hba_misc = 0;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 0;
  cpi->max_lun = 0;
  cpi->initiator_id = 0;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "", HBA_IDLEN);
  strlcpy(cpi->dev_name, sim->sim_name, DEV_IDLEN);
  cpi->unit_number = sim->unit_number;
  cpi->bus_id = sim->bus_id;
  cpi->base_transfer_speed = 0;
  cpi->protocol = PROTO_UNSPECIFIED;
  cpi->protocol_version = PROTO_VERSION_UNSPECIFIED;
  cpi->transport = XPORT_UNSPECIFIED;
  cpi->transport_version = XPORT_VERSION_UNSPECIFIED;
  cpi->ccb_h.status = CAM_REQ_CMP;
  xpt_done(work_ccb);
  break;
 }
 default:
  work_ccb->ccb_h.status = CAM_REQ_INVALID;
  xpt_done(work_ccb);
  break;
 }
}
