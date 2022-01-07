
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* cdb_bytes; scalar_t__* cdb_ptr; } ;
struct TYPE_9__ {TYPE_1__ cdb_io; } ;
struct TYPE_11__ {int func_code; int flags; void* status; } ;
struct ccb_trans_settings_spi {int flags; int valid; } ;
struct TYPE_13__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct TYPE_12__ {struct ccb_trans_settings_scsi scsi; } ;
struct TYPE_14__ {int flags; int valid; int transport_version; void* transport; void* protocol_version; void* protocol; TYPE_6__ xport_specific; TYPE_5__ proto_specific; } ;
struct ccb_pathinq {int version_num; int max_lun; int maxio; int base_transfer_speed; int unit_number; int dev_name; int hba_vid; int sim_vid; void* protocol_version; int transport_version; void* transport; void* protocol; int hba_misc; int hba_inquiry; int bus_id; int initiator_id; int max_target; int hba_eng_cnt; int target_sprt; } ;
struct ccb_calc_geometry {long volume_size; long block_size; int heads; int secs_per_track; int cylinders; } ;
union ccb {TYPE_2__ csio; TYPE_4__ ccb_h; TYPE_7__ cts; struct ccb_pathinq cpi; struct ccb_calc_geometry ccg; } ;
typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct cam_sim {int dummy; } ;
struct aac_softc {int aac_max_sectors; int flags; int aac_dev; int aac_io_lock; } ;
struct aac_cam {TYPE_3__* inf; } ;
struct TYPE_10__ {scalar_t__ BusType; int BusNumber; int InitiatorBusId; int TargetsPerBus; struct aac_softc* aac_sc; } ;


 int AAC_FLAGS_CAM_NORESET ;
 int CAM_CDB_POINTER ;
 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_PROVIDE_FAIL ;
 void* CAM_REQ_CMP ;
 int CCB_TRANS_DISC_ENB ;
 int CCB_TRANS_DISC_VALID ;
 int CCB_TRANS_TAG_ENB ;
 int CCB_TRANS_TQ_VALID ;
 scalar_t__ CONTAINER_BUS ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_DISC ;
 int DEV_IDLEN ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int HBA_IDLEN ;
 int MA_OWNED ;
 int PIM_NOBUSRESET ;
 int PIM_SEQSCAN ;
 int PI_TAG_ABLE ;
 void* PROTO_SCSI ;
 scalar_t__ READ_10 ;
 scalar_t__ READ_12 ;
 scalar_t__ READ_16 ;
 scalar_t__ READ_6 ;
 void* SCSI_REV_SPC2 ;
 int SIM_IDLEN ;
 scalar_t__ WRITE_10 ;
 scalar_t__ WRITE_12 ;
 scalar_t__ WRITE_16 ;
 scalar_t__ WRITE_6 ;
 void* XPORT_SAS ;
 void* aac_cam_abort_ccb (struct cam_sim*,union ccb*) ;
 void* aac_cam_reset_bus (struct cam_sim*,union ccb*) ;
 void* aac_cam_term_io (struct cam_sim*,union ccb*) ;
 int aac_container_rw_command (struct cam_sim*,union ccb*,scalar_t__*) ;
 int aac_container_special_command (struct cam_sim*,union ccb*,scalar_t__*) ;
 int aac_passthrough_command (struct cam_sim*,union ccb*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int device_printf (int ,char*,int) ;
 int fwprintf (struct aac_softc*,char*,char*) ;
 int mtx_assert (int *,int ) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
aac_cam_action(struct cam_sim *sim, union ccb *ccb)
{
 struct aac_cam *camsc;
 struct aac_softc *sc;

 camsc = (struct aac_cam *)cam_sim_softc(sim);
 sc = camsc->inf->aac_sc;
 fwprintf(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");
 mtx_assert(&sc->aac_io_lock, MA_OWNED);



 switch(ccb->ccb_h.func_code) {
 case 130:

  break;
 case 135:
 {
  struct ccb_calc_geometry *ccg;
  u_int32_t size_mb;
  u_int32_t secs_per_cylinder;

  ccg = &ccb->ccg;
  size_mb = ccg->volume_size /
      ((1024L * 1024L) / ccg->block_size);
  if (size_mb >= (2 * 1024)) {
   ccg->heads = 255;
   ccg->secs_per_track = 63;
  } else if (size_mb >= (1 * 1024)) {
   ccg->heads = 128;
   ccg->secs_per_track = 32;
  } else {
   ccg->heads = 64;
   ccg->secs_per_track = 32;
  }
  secs_per_cylinder = ccg->heads * ccg->secs_per_track;
  ccg->cylinders = ccg->volume_size / secs_per_cylinder;

  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  return;
 }
 case 133:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->target_sprt = 0;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = camsc->inf->TargetsPerBus - 1;
  cpi->max_lun = 7;
  cpi->initiator_id = camsc->inf->InitiatorBusId;
  cpi->bus_id = camsc->inf->BusNumber;
  cpi->hba_misc = PIM_NOBUSRESET;
  cpi->hba_inquiry = PI_TAG_ABLE;
  cpi->base_transfer_speed = 300000;







  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "PMC-Sierra", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  return;
 }
 case 134:
 {
  ccb->cts.flags = ~(CCB_TRANS_DISC_ENB | CCB_TRANS_TAG_ENB);
  ccb->cts.valid = CCB_TRANS_DISC_VALID | CCB_TRANS_TQ_VALID;

  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  return;
 }
 case 129:
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  xpt_done(ccb);
  return;
 case 132:
  if (!(sc->flags & AAC_FLAGS_CAM_NORESET) &&
   camsc->inf->BusType != CONTAINER_BUS) {
   ccb->ccb_h.status = aac_cam_reset_bus(sim, ccb);
  } else {
   ccb->ccb_h.status = CAM_REQ_CMP;
  }
  xpt_done(ccb);
  return;
 case 131:
  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  return;
 case 136:
  ccb->ccb_h.status = aac_cam_abort_ccb(sim, ccb);
  xpt_done(ccb);
  return;
 case 128:
  ccb->ccb_h.status = aac_cam_term_io(sim, ccb);
  xpt_done(ccb);
  return;
 default:
  device_printf(sc->aac_dev, "Unsupported command 0x%x\n",
      ccb->ccb_h.func_code);
  ccb->ccb_h.status = CAM_PROVIDE_FAIL;
  xpt_done(ccb);
  return;
 }


 if (camsc->inf->BusType == CONTAINER_BUS) {
  u_int8_t *cmdp;

  if (ccb->ccb_h.flags & CAM_CDB_POINTER)
   cmdp = ccb->csio.cdb_io.cdb_ptr;
  else
   cmdp = &ccb->csio.cdb_io.cdb_bytes[0];

  if (*cmdp==READ_6 || *cmdp==WRITE_6 || *cmdp==READ_10 ||
   *cmdp==WRITE_10 || *cmdp==READ_12 || *cmdp==WRITE_12 ||
   *cmdp==READ_16 || *cmdp==WRITE_16)
   aac_container_rw_command(sim, ccb, cmdp);
  else
   aac_container_special_command(sim, ccb, cmdp);
 } else {
  aac_passthrough_command(sim, ccb);
 }
}
