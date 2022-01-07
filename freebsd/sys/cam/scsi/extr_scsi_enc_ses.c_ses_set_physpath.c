
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
struct ses_iterator {int type_element_index; int type_index; } ;
struct scsi_vpd_id_descriptor {int identifier; } ;
struct scsi_vpd_device_id {int dummy; } ;
struct sbuf {int dummy; } ;
struct TYPE_20__ {int status; int path; int func_code; } ;
struct ccb_dev_advinfo {int provsiz; int * buf; TYPE_6__ ccb_h; int bufsiz; int buftype; int flags; } ;
struct TYPE_16__ {scalar_t__ num_set; struct sbuf* physpath; } ;
typedef TYPE_2__ ses_setphyspath_callback_args_t ;
struct TYPE_15__ {int * hdr; } ;
struct TYPE_17__ {char* descr; int descr_len; TYPE_1__ addl; } ;
typedef TYPE_3__ ses_element_t ;
struct TYPE_18__ {TYPE_12__* periph; } ;
typedef TYPE_4__ enc_softc_t ;
struct TYPE_19__ {TYPE_3__* elm_private; } ;
typedef TYPE_5__ enc_element_t ;
struct TYPE_14__ {int path; } ;


 int CAM_DEV_QFRZN ;
 int CAM_PRIORITY_NORMAL ;
 int CAM_REQ_CMP ;
 int CAM_SCSI_DEVID_MAXLEN ;
 int CDAI_FLAG_NONE ;
 int CDAI_TYPE_SCSI_DEVID ;
 int EIO ;
 int ENC_FREE (int *) ;
 int ENOENT ;
 int ENOMEM ;
 int FALSE ;
 int M_SCSIENC ;
 int M_WAITOK ;
 int M_ZERO ;
 int SBUF_AUTOEXTEND ;
 int XPT_DEV_ADVINFO ;
 int cam_periph_lock (TYPE_12__*) ;
 int cam_periph_unlock (TYPE_12__*) ;
 int cam_release_devq (int ,int ,int ,int ,int ) ;
 int isprint (char const) ;
 scalar_t__ isspace (char const) ;
 int * malloc (int ,int ,int) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int * sbuf_new (struct sbuf*,int *,int,int ) ;
 int sbuf_printf (struct sbuf*,char*,int ,int ,int ) ;
 int sbuf_putc (struct sbuf*,char const) ;
 int scsi_8btou64 (int ) ;
 int scsi_devid_is_naa_ieee_reg ;
 struct scsi_vpd_id_descriptor* scsi_get_devid (struct scsi_vpd_device_id*,int ,int ) ;
 int ses_paths_iter (TYPE_4__*,TYPE_5__*,int ,TYPE_2__*) ;
 int ses_setphyspath_callback ;
 int xpt_action (union ccb*) ;
 int xpt_setup_ccb (TYPE_6__*,int ,int ) ;

__attribute__((used)) static int
ses_set_physpath(enc_softc_t *enc, enc_element_t *elm,
   struct ses_iterator *iter)
{
 struct ccb_dev_advinfo cdai;
 ses_setphyspath_callback_args_t args;
 int i, ret;
 struct sbuf sb;
 struct scsi_vpd_id_descriptor *idd;
 uint8_t *devid;
 ses_element_t *elmpriv;
 const char *c;

 ret = EIO;
 devid = ((void*)0);

 elmpriv = elm->elm_private;
 if (elmpriv->addl.hdr == ((void*)0))
  goto out;





 xpt_setup_ccb(&cdai.ccb_h, enc->periph->path, CAM_PRIORITY_NORMAL);
 cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
 cdai.flags = CDAI_FLAG_NONE;
 cdai.buftype = CDAI_TYPE_SCSI_DEVID;
 cdai.bufsiz = CAM_SCSI_DEVID_MAXLEN;
 cdai.buf = devid = malloc(cdai.bufsiz, M_SCSIENC, M_WAITOK|M_ZERO);
 cam_periph_lock(enc->periph);
 xpt_action((union ccb *)&cdai);
 if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
  cam_release_devq(cdai.ccb_h.path, 0, 0, 0, FALSE);
 cam_periph_unlock(enc->periph);
 if (cdai.ccb_h.status != CAM_REQ_CMP)
  goto out;

 idd = scsi_get_devid((struct scsi_vpd_device_id *)cdai.buf,
     cdai.provsiz, scsi_devid_is_naa_ieee_reg);
 if (idd == ((void*)0))
  goto out;

 if (sbuf_new(&sb, ((void*)0), 128, SBUF_AUTOEXTEND) == ((void*)0)) {
  ret = ENOMEM;
  goto out;
 }

 sbuf_printf(&sb, "id1,enc@n%jx/type@%x/slot@%x",
     scsi_8btou64(idd->identifier), iter->type_index,
     iter->type_element_index);

 if (elmpriv->descr != ((void*)0) && elmpriv->descr_len > 0) {
  sbuf_cat(&sb, "/elmdesc@");
  for (i = 0, c = elmpriv->descr; i < elmpriv->descr_len;
      i++, c++) {
   if (!isprint(*c) || isspace(*c) || *c == '/')
    sbuf_putc(&sb, '_');
   else
    sbuf_putc(&sb, *c);
  }
 }
 sbuf_finish(&sb);






 args.physpath= &sb;
 args.num_set = 0;
 ses_paths_iter(enc, elm, ses_setphyspath_callback, &args);
 sbuf_delete(&sb);

 ret = args.num_set == 0 ? ENOENT : 0;

out:
 if (devid != ((void*)0))
  ENC_FREE(devid);
 return (ret);
}
