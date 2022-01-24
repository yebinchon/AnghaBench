#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  uint8_t ;
struct ses_iterator {int /*<<< orphan*/  type_element_index; int /*<<< orphan*/  type_index; } ;
struct scsi_vpd_id_descriptor {int /*<<< orphan*/  identifier; } ;
struct scsi_vpd_device_id {int dummy; } ;
struct sbuf {int dummy; } ;
struct TYPE_20__ {int status; int /*<<< orphan*/  path; int /*<<< orphan*/  func_code; } ;
struct ccb_dev_advinfo {int /*<<< orphan*/  provsiz; int /*<<< orphan*/ * buf; TYPE_6__ ccb_h; int /*<<< orphan*/  bufsiz; int /*<<< orphan*/  buftype; int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {scalar_t__ num_set; struct sbuf* physpath; } ;
typedef  TYPE_2__ ses_setphyspath_callback_args_t ;
struct TYPE_15__ {int /*<<< orphan*/ * hdr; } ;
struct TYPE_17__ {char* descr; int descr_len; TYPE_1__ addl; } ;
typedef  TYPE_3__ ses_element_t ;
struct TYPE_18__ {TYPE_12__* periph; } ;
typedef  TYPE_4__ enc_softc_t ;
struct TYPE_19__ {TYPE_3__* elm_private; } ;
typedef  TYPE_5__ enc_element_t ;
struct TYPE_14__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int CAM_DEV_QFRZN ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_SCSI_DEVID_MAXLEN ; 
 int /*<<< orphan*/  CDAI_FLAG_NONE ; 
 int /*<<< orphan*/  CDAI_TYPE_SCSI_DEVID ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  M_SCSIENC ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SBUF_AUTOEXTEND ; 
 int /*<<< orphan*/  XPT_DEV_ADVINFO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/ * FUNC10 (struct sbuf*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sbuf*,char const) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_devid_is_naa_ieee_reg ; 
 struct scsi_vpd_id_descriptor* FUNC14 (struct scsi_vpd_device_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ses_setphyspath_callback ; 
 int /*<<< orphan*/  FUNC16 (union ccb*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(enc_softc_t *enc, enc_element_t *elm,
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
	devid = NULL;

	elmpriv = elm->elm_private;
	if (elmpriv->addl.hdr == NULL)
		goto out;

	/*
	 * Assemble the components of the physical path starting with
	 * the device ID of the enclosure itself.
	 */
	FUNC17(&cdai.ccb_h, enc->periph->path, CAM_PRIORITY_NORMAL);
	cdai.ccb_h.func_code = XPT_DEV_ADVINFO;
	cdai.flags = CDAI_FLAG_NONE;
	cdai.buftype = CDAI_TYPE_SCSI_DEVID;
	cdai.bufsiz = CAM_SCSI_DEVID_MAXLEN;
	cdai.buf = devid = FUNC6(cdai.bufsiz, M_SCSIENC, M_WAITOK|M_ZERO);
	FUNC1(enc->periph);
	FUNC16((union ccb *)&cdai);
	if ((cdai.ccb_h.status & CAM_DEV_QFRZN) != 0)
		FUNC3(cdai.ccb_h.path, 0, 0, 0, FALSE);
	FUNC2(enc->periph);
	if (cdai.ccb_h.status != CAM_REQ_CMP)
		goto out;

	idd = FUNC14((struct scsi_vpd_device_id *)cdai.buf,
	    cdai.provsiz, scsi_devid_is_naa_ieee_reg);
	if (idd == NULL)
		goto out;

	if (FUNC10(&sb, NULL, 128, SBUF_AUTOEXTEND) == NULL) {
		ret = ENOMEM;
		goto out;
	}
	/* Next, generate the physical path string */
	FUNC11(&sb, "id1,enc@n%jx/type@%x/slot@%x",
	    FUNC13(idd->identifier), iter->type_index,
	    iter->type_element_index);
	/* Append the element descriptor if one exists */
	if (elmpriv->descr != NULL && elmpriv->descr_len > 0) {
		FUNC7(&sb, "/elmdesc@");
		for (i = 0, c = elmpriv->descr; i < elmpriv->descr_len;
		    i++, c++) {
			if (!FUNC4(*c) || FUNC5(*c) || *c == '/')
				FUNC12(&sb, '_');
			else
				FUNC12(&sb, *c);
		}
	}
	FUNC9(&sb);

	/*
	 * Set this physical path on any CAM devices with a device ID
	 * descriptor that matches one created from the SES additional
	 * status data for this element.
	 */
	args.physpath= &sb;
	args.num_set = 0;
	FUNC15(enc, elm, ses_setphyspath_callback, &args);
	FUNC8(&sb);

	ret = args.num_set == 0 ? ENOENT : 0;

out:
	if (devid != NULL)
		FUNC0(devid);
	return (ret);
}