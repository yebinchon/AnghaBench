
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct scsi_vpd_id_descriptor {int proto_codeset; size_t length; char* identifier; int id_type; } ;
struct scsi_vpd_device_id {int dummy; } ;
struct TYPE_2__ {int status; int path; int func_code; } ;
struct ccb_dev_advinfo {size_t bufsiz; char* buf; int buftype; scalar_t__ provsiz; TYPE_1__ ccb_h; int flags; } ;
struct cam_path {int dummy; } ;
typedef int cdai ;


 int CAM_DEV_QFRZN ;
 int CAM_PRIORITY_NORMAL ;
 size_t CAM_SCSI_DEVID_MAXLEN ;
 int CDAI_FLAG_NONE ;
 int CDAI_TYPE_PHYS_PATH ;

 int CDAI_TYPE_SERIAL_NUM ;
 int EFAULT ;
 int ENOMEM ;
 int FALSE ;
 int MA_OWNED ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int SVPD_ID_CODESET_ASCII ;
 int SVPD_ID_CODESET_MASK ;
 int SVPD_ID_CODESET_UTF8 ;
 int SVPD_ID_TYPE_MASK ;
 int SVPD_ID_TYPE_UUID ;
 int XPT_DEV_ADVINFO ;
 int bcopy (char*,char*,int) ;
 int cam_release_devq (int ,int ,int ,int ,int ) ;
 int free (char*,int ) ;
 char* malloc (size_t,int ,int ) ;
 int memset (struct ccb_dev_advinfo*,int ,int) ;
 int scsi_devid_is_lun_eui64 ;
 int scsi_devid_is_lun_md5 ;
 int scsi_devid_is_lun_naa ;
 int scsi_devid_is_lun_name ;
 int scsi_devid_is_lun_t10 ;
 int scsi_devid_is_lun_uuid ;
 struct scsi_vpd_id_descriptor* scsi_get_devid (struct scsi_vpd_device_id*,scalar_t__,int ) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strnlen (char*,int) ;
 int xpt_action (union ccb*) ;
 int xpt_path_assert (struct cam_path*,int ) ;
 int xpt_setup_ccb (TYPE_1__*,struct cam_path*,int ) ;

int
xpt_getattr(char *buf, size_t len, const char *attr, struct cam_path *path)
{
 int ret = -1, l, o;
 struct ccb_dev_advinfo cdai;
 struct scsi_vpd_device_id *did;
 struct scsi_vpd_id_descriptor *idd;

 xpt_path_assert(path, MA_OWNED);

 memset(&cdai, 0, sizeof(cdai));
 xpt_setup_ccb(&cdai.ccb_h, path, CAM_PRIORITY_NORMAL);
 cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
 cdai.flags = CDAI_FLAG_NONE;
 cdai.bufsiz = len;
 cdai.buf = buf;

 if (!strcmp(attr, "GEOM::ident"))
  cdai.buftype = CDAI_TYPE_SERIAL_NUM;
 else if (!strcmp(attr, "GEOM::physpath"))
  cdai.buftype = CDAI_TYPE_PHYS_PATH;
 else if (strcmp(attr, "GEOM::lunid") == 0 ||
   strcmp(attr, "GEOM::lunname") == 0) {
  cdai.buftype = 128;
  cdai.bufsiz = CAM_SCSI_DEVID_MAXLEN;
  cdai.buf = malloc(cdai.bufsiz, M_CAMXPT, M_NOWAIT);
  if (cdai.buf == ((void*)0)) {
   ret = ENOMEM;
   goto out;
  }
 } else
  goto out;

 xpt_action((union ccb *)&cdai);
 if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
  cam_release_devq(cdai.ccb_h.path, 0, 0, 0, FALSE);
 if (cdai.provsiz == 0)
  goto out;
 switch(cdai.buftype) {
 case 128:
  did = (struct scsi_vpd_device_id *)cdai.buf;
  if (strcmp(attr, "GEOM::lunid") == 0) {
   idd = scsi_get_devid(did, cdai.provsiz,
       scsi_devid_is_lun_naa);
   if (idd == ((void*)0))
    idd = scsi_get_devid(did, cdai.provsiz,
        scsi_devid_is_lun_eui64);
   if (idd == ((void*)0))
    idd = scsi_get_devid(did, cdai.provsiz,
        scsi_devid_is_lun_uuid);
   if (idd == ((void*)0))
    idd = scsi_get_devid(did, cdai.provsiz,
        scsi_devid_is_lun_md5);
  } else
   idd = ((void*)0);

  if (idd == ((void*)0))
   idd = scsi_get_devid(did, cdai.provsiz,
       scsi_devid_is_lun_t10);
  if (idd == ((void*)0))
   idd = scsi_get_devid(did, cdai.provsiz,
       scsi_devid_is_lun_name);
  if (idd == ((void*)0))
   break;

  ret = 0;
  if ((idd->proto_codeset & SVPD_ID_CODESET_MASK) ==
      SVPD_ID_CODESET_ASCII) {
   if (idd->length < len) {
    for (l = 0; l < idd->length; l++)
     buf[l] = idd->identifier[l] ?
         idd->identifier[l] : ' ';
    buf[l] = 0;
   } else
    ret = EFAULT;
   break;
  }
  if ((idd->proto_codeset & SVPD_ID_CODESET_MASK) ==
      SVPD_ID_CODESET_UTF8) {
   l = strnlen(idd->identifier, idd->length);
   if (l < len) {
    bcopy(idd->identifier, buf, l);
    buf[l] = 0;
   } else
    ret = EFAULT;
   break;
  }
  if ((idd->id_type & SVPD_ID_TYPE_MASK) ==
      SVPD_ID_TYPE_UUID && idd->identifier[0] == 0x10) {
   if ((idd->length - 2) * 2 + 4 >= len) {
    ret = EFAULT;
    break;
   }
   for (l = 2, o = 0; l < idd->length; l++) {
    if (l == 6 || l == 8 || l == 10 || l == 12)
        o += sprintf(buf + o, "-");
    o += sprintf(buf + o, "%02x",
        idd->identifier[l]);
   }
   break;
  }
  if (idd->length * 2 < len) {
   for (l = 0; l < idd->length; l++)
    sprintf(buf + l * 2, "%02x",
        idd->identifier[l]);
  } else
    ret = EFAULT;
  break;
 default:
  if (cdai.provsiz < len) {
   cdai.buf[cdai.provsiz] = 0;
   ret = 0;
  } else
   ret = EFAULT;
  break;
 }

out:
 if ((char *)cdai.buf != buf)
  free(cdai.buf, M_CAMXPT);
 return ret;
}
