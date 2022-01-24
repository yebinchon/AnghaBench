#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct scsi_vpd_id_descriptor {int proto_codeset; size_t length; char* identifier; int id_type; } ;
struct scsi_vpd_device_id {int dummy; } ;
struct TYPE_2__ {int status; int /*<<< orphan*/  path; int /*<<< orphan*/  func_code; } ;
struct ccb_dev_advinfo {size_t bufsiz; char* buf; int buftype; scalar_t__ provsiz; TYPE_1__ ccb_h; int /*<<< orphan*/  flags; } ;
struct cam_path {int dummy; } ;
typedef  int /*<<< orphan*/  cdai ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 size_t CAM_SCSI_DEVID_MAXLEN ; 
 int /*<<< orphan*/  CDAI_FLAG_NONE ; 
 int CDAI_TYPE_PHYS_PATH ; 
#define  CDAI_TYPE_SCSI_DEVID 128 
 int CDAI_TYPE_SERIAL_NUM ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int SVPD_ID_CODESET_ASCII ; 
 int SVPD_ID_CODESET_MASK ; 
 int SVPD_ID_CODESET_UTF8 ; 
 int SVPD_ID_TYPE_MASK ; 
 int SVPD_ID_TYPE_UUID ; 
 int /*<<< orphan*/  XPT_DEV_ADVINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ccb_dev_advinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  scsi_devid_is_lun_eui64 ; 
 int /*<<< orphan*/  scsi_devid_is_lun_md5 ; 
 int /*<<< orphan*/  scsi_devid_is_lun_naa ; 
 int /*<<< orphan*/  scsi_devid_is_lun_name ; 
 int /*<<< orphan*/  scsi_devid_is_lun_t10 ; 
 int /*<<< orphan*/  scsi_devid_is_lun_uuid ; 
 struct scsi_vpd_id_descriptor* FUNC5 (struct scsi_vpd_device_id*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,char*,...) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct cam_path*,int /*<<< orphan*/ ) ; 

int
FUNC12(char *buf, size_t len, const char *attr, struct cam_path *path)
{
	int ret = -1, l, o;
	struct ccb_dev_advinfo cdai;
	struct scsi_vpd_device_id *did;
	struct scsi_vpd_id_descriptor *idd;

	FUNC10(path, MA_OWNED);

	FUNC4(&cdai, 0, sizeof(cdai));
	FUNC11(&cdai.ccb_h, path, CAM_PRIORITY_NORMAL);
	cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
	cdai.flags = CDAI_FLAG_NONE;
	cdai.bufsiz = len;
	cdai.buf = buf;

	if (!FUNC7(attr, "GEOM::ident"))
		cdai.buftype = CDAI_TYPE_SERIAL_NUM;
	else if (!FUNC7(attr, "GEOM::physpath"))
		cdai.buftype = CDAI_TYPE_PHYS_PATH;
	else if (FUNC7(attr, "GEOM::lunid") == 0 ||
		 FUNC7(attr, "GEOM::lunname") == 0) {
		cdai.buftype = CDAI_TYPE_SCSI_DEVID;
		cdai.bufsiz = CAM_SCSI_DEVID_MAXLEN;
		cdai.buf = FUNC3(cdai.bufsiz, M_CAMXPT, M_NOWAIT);
		if (cdai.buf == NULL) {
			ret = ENOMEM;
			goto out;
		}
	} else
		goto out;

	FUNC9((union ccb *)&cdai); /* can only be synchronous */
	if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
		FUNC1(cdai.ccb_h.path, 0, 0, 0, FALSE);
	if (cdai.provsiz == 0)
		goto out;
	switch(cdai.buftype) {
	case CDAI_TYPE_SCSI_DEVID:
		did = (struct scsi_vpd_device_id *)cdai.buf;
		if (FUNC7(attr, "GEOM::lunid") == 0) {
			idd = FUNC5(did, cdai.provsiz,
			    scsi_devid_is_lun_naa);
			if (idd == NULL)
				idd = FUNC5(did, cdai.provsiz,
				    scsi_devid_is_lun_eui64);
			if (idd == NULL)
				idd = FUNC5(did, cdai.provsiz,
				    scsi_devid_is_lun_uuid);
			if (idd == NULL)
				idd = FUNC5(did, cdai.provsiz,
				    scsi_devid_is_lun_md5);
		} else
			idd = NULL;

		if (idd == NULL)
			idd = FUNC5(did, cdai.provsiz,
			    scsi_devid_is_lun_t10);
		if (idd == NULL)
			idd = FUNC5(did, cdai.provsiz,
			    scsi_devid_is_lun_name);
		if (idd == NULL)
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
			l = FUNC8(idd->identifier, idd->length);
			if (l < len) {
				FUNC0(idd->identifier, buf, l);
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
				    o += FUNC6(buf + o, "-");
				o += FUNC6(buf + o, "%02x",
				    idd->identifier[l]);
			}
			break;
		}
		if (idd->length * 2 < len) {
			for (l = 0; l < idd->length; l++)
				FUNC6(buf + l * 2, "%02x",
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
		FUNC2(cdai.buf, M_CAMXPT);
	return ret;
}