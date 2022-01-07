
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cmd; int res; } ;
struct TYPE_5__ {int status; scalar_t__ func_code; int timeout; int path; } ;
struct TYPE_8__ {int scsi_status; } ;
union ccb {TYPE_2__ ataio; TYPE_1__ ccb_h; TYPE_4__ csio; } ;
struct sbuf {int dummy; } ;
struct TYPE_7__ {scalar_t__ status; int func_code; } ;
struct ccb_getdev {int serial_num_len; int serial_num; TYPE_3__ ccb_h; } ;
struct cam_periph {int unit_number; int periph_name; } ;




 int CAM_PERIPH_DEVD_MSG_SIZE ;
 int CAM_PRIORITY_NORMAL ;
 scalar_t__ CAM_REQ_CMP ;

 int CAM_STATUS_MASK ;
 int M_CAMPERIPH ;
 int M_NOWAIT ;
 int SBUF_FIXEDLEN ;
 scalar_t__ XPT_ATA_IO ;
 int XPT_GDEV_TYPE ;
 scalar_t__ XPT_SCSI_IO ;
 int ata_cmd_sbuf (int *,struct sbuf*) ;
 int ata_res_sbuf (int *,struct sbuf*) ;
 int devctl_notify (char*,char*,char*,int ) ;
 int free (char*,int ) ;
 char* malloc (int ,int ,int ) ;
 int sbuf_bcat (struct sbuf*,int ,int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 scalar_t__ sbuf_finish (struct sbuf*) ;
 int sbuf_new (struct sbuf*,char*,int ,int ) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int scsi_cdb_sbuf (int ,struct sbuf*) ;
 int scsi_extract_sense_ccb (union ccb*,int*,int*,int*,int*) ;
 int scsiio_cdb_ptr (TYPE_4__*) ;
 int xpt_action (union ccb*) ;
 scalar_t__ xpt_alloc_ccb_nowait () ;
 int xpt_free_ccb (union ccb*) ;
 struct cam_periph* xpt_path_periph (int ) ;
 int xpt_setup_ccb (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
cam_periph_devctl_notify(union ccb *ccb)
{
 struct cam_periph *periph;
 struct ccb_getdev *cgd;
 struct sbuf sb;
 int serr, sk, asc, ascq;
 char *sbmsg, *type;

 sbmsg = malloc(CAM_PERIPH_DEVD_MSG_SIZE, M_CAMPERIPH, M_NOWAIT);
 if (sbmsg == ((void*)0))
  return;

 sbuf_new(&sb, sbmsg, CAM_PERIPH_DEVD_MSG_SIZE, SBUF_FIXEDLEN);

 periph = xpt_path_periph(ccb->ccb_h.path);
 sbuf_printf(&sb, "device=%s%d ", periph->periph_name,
     periph->unit_number);

 sbuf_printf(&sb, "serial=\"");
 if ((cgd = (struct ccb_getdev *)xpt_alloc_ccb_nowait()) != ((void*)0)) {
  xpt_setup_ccb(&cgd->ccb_h, ccb->ccb_h.path,
      CAM_PRIORITY_NORMAL);
  cgd->ccb_h.func_code = XPT_GDEV_TYPE;
  xpt_action((union ccb *)cgd);

  if (cgd->ccb_h.status == CAM_REQ_CMP)
   sbuf_bcat(&sb, cgd->serial_num, cgd->serial_num_len);
  xpt_free_ccb((union ccb *)cgd);
 }
 sbuf_printf(&sb, "\" ");
 sbuf_printf(&sb, "cam_status=\"0x%x\" ", ccb->ccb_h.status);

 switch (ccb->ccb_h.status & CAM_STATUS_MASK) {
 case 129:
  sbuf_printf(&sb, "timeout=%d ", ccb->ccb_h.timeout);
  type = "timeout";
  break;
 case 128:
  sbuf_printf(&sb, "scsi_status=%d ", ccb->csio.scsi_status);
  if (scsi_extract_sense_ccb(ccb, &serr, &sk, &asc, &ascq))
   sbuf_printf(&sb, "scsi_sense=\"%02x %02x %02x %02x\" ",
       serr, sk, asc, ascq);
  type = "error";
  break;
 case 130:
  sbuf_printf(&sb, "RES=\"");
  ata_res_sbuf(&ccb->ataio.res, &sb);
  sbuf_printf(&sb, "\" ");
  type = "error";
  break;
 default:
  type = "error";
  break;
 }

 if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
  sbuf_printf(&sb, "CDB=\"");
  scsi_cdb_sbuf(scsiio_cdb_ptr(&ccb->csio), &sb);
  sbuf_printf(&sb, "\" ");
 } else if (ccb->ccb_h.func_code == XPT_ATA_IO) {
  sbuf_printf(&sb, "ACB=\"");
  ata_cmd_sbuf(&ccb->ataio.cmd, &sb);
  sbuf_printf(&sb, "\" ");
 }

 if (sbuf_finish(&sb) == 0)
  devctl_notify("CAM", "periph", type, sbuf_data(&sb));
 sbuf_delete(&sb);
 free(sbmsg, M_CAMPERIPH);
}
