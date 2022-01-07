
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scsi_sense_data_fixed {int add_sense_code_qual; int add_sense_code; int flags; } ;
struct ctio_descr {scalar_t__ offset; struct ccb_accept_tio* atio; } ;
struct TYPE_4__ {int flags; scalar_t__ targ_descr; } ;
struct ccb_scsiio {int init_id; TYPE_1__ ccb_h; int tag_id; } ;
struct TYPE_6__ {int status; scalar_t__ targ_descr; } ;
struct ccb_accept_tio {int sense_len; TYPE_3__ ccb_h; int sense_data; int init_id; int tag_id; } ;
struct atio_descr {int flags; scalar_t__ base_off; scalar_t__ init_req; scalar_t__ targ_req; } ;
typedef int cam_status ;
struct TYPE_5__ {int tqe; } ;


 int ATIO_WORK ;

 int CAM_DIR_IN ;
 int CAM_DIR_MASK ;
 int CAM_DIR_OUT ;

 int CAM_STATUS_MASK ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int abort () ;
 scalar_t__ debug ;
 struct ccb_scsiio* get_ctio () ;
 TYPE_2__ periph_links ;
 int send_ccb (union ccb*,int) ;
 int tcmd_handle (struct ccb_accept_tio*,struct ccb_scsiio*,int ) ;
 int tcmd_sense (int ,struct ccb_scsiio*,int ,int ,int ) ;
 int warn (char*,struct atio_descr*) ;
 int warnx (char*,...) ;
 int work_queue ;

int
work_atio(struct ccb_accept_tio *atio)
{
 struct ccb_scsiio *ctio;
 struct atio_descr *a_descr;
 struct ctio_descr *c_descr;
 cam_status status;
 int ret;

 if (debug)
  warnx("Working on ATIO %p", atio);

 a_descr = (struct atio_descr *)atio->ccb_h.targ_descr;


 ctio = get_ctio();
 if (ctio == ((void*)0)) {
  return (1);
 }
 ret = 0;
 ctio->ccb_h.flags = a_descr->flags;
 ctio->tag_id = atio->tag_id;
 ctio->init_id = atio->init_id;

 c_descr = (struct ctio_descr *)ctio->ccb_h.targ_descr;
 c_descr->atio = atio;
 if ((a_descr->flags & CAM_DIR_IN) != 0)
  c_descr->offset = a_descr->base_off + a_descr->targ_req;
 else if ((a_descr->flags & CAM_DIR_MASK) == CAM_DIR_OUT)
  c_descr->offset = a_descr->base_off + a_descr->init_req;
 else
  c_descr->offset = a_descr->base_off;





 if (atio->sense_len != 0) {
  struct scsi_sense_data_fixed *sense;

  if (debug) {
   warnx("ATIO with %u bytes sense received",
         atio->sense_len);
  }
  sense = (struct scsi_sense_data_fixed *)&atio->sense_data;
  tcmd_sense(ctio->init_id, ctio, sense->flags,
      sense->add_sense_code, sense->add_sense_code_qual);
  send_ccb((union ccb *)ctio, 1);
  return (0);
 }

 status = atio->ccb_h.status & CAM_STATUS_MASK;
 switch (status) {
 case 129:
  ret = tcmd_handle(atio, ctio, ATIO_WORK);
  break;
 case 128:
  warn("ATIO %p aborted", a_descr);

  TAILQ_REMOVE(&work_queue, &atio->ccb_h, periph_links.tqe);
  send_ccb((union ccb *)atio, 1);
  ret = 1;
  break;
 default:
  warnx("ATIO completed with unhandled status %#x", status);
  abort();

  break;
 }

 return (ret);
}
