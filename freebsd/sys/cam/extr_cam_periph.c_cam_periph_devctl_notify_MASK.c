#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  res; } ;
struct TYPE_5__ {int status; scalar_t__ func_code; int /*<<< orphan*/  timeout; int /*<<< orphan*/  path; } ;
struct TYPE_8__ {int /*<<< orphan*/  scsi_status; } ;
union ccb {TYPE_2__ ataio; TYPE_1__ ccb_h; TYPE_4__ csio; } ;
struct sbuf {int dummy; } ;
struct TYPE_7__ {scalar_t__ status; int /*<<< orphan*/  func_code; } ;
struct ccb_getdev {int /*<<< orphan*/  serial_num_len; int /*<<< orphan*/  serial_num; TYPE_3__ ccb_h; } ;
struct cam_periph {int /*<<< orphan*/  unit_number; int /*<<< orphan*/  periph_name; } ;

/* Variables and functions */
#define  CAM_ATA_STATUS_ERROR 130 
#define  CAM_CMD_TIMEOUT 129 
 int /*<<< orphan*/  CAM_PERIPH_DEVD_MSG_SIZE ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 scalar_t__ CAM_REQ_CMP ; 
#define  CAM_SCSI_STATUS_ERROR 128 
 int CAM_STATUS_MASK ; 
 int /*<<< orphan*/  M_CAMPERIPH ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  SBUF_FIXEDLEN ; 
 scalar_t__ XPT_ATA_IO ; 
 int /*<<< orphan*/  XPT_GDEV_TYPE ; 
 scalar_t__ XPT_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*) ; 
 scalar_t__ FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sbuf*) ; 
 int /*<<< orphan*/  FUNC12 (union ccb*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (union ccb*) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (union ccb*) ; 
 struct cam_periph* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(union ccb *ccb)
{
	struct cam_periph *periph;
	struct ccb_getdev *cgd;
	struct sbuf sb;
	int serr, sk, asc, ascq;
	char *sbmsg, *type;

	sbmsg = FUNC4(CAM_PERIPH_DEVD_MSG_SIZE, M_CAMPERIPH, M_NOWAIT);
	if (sbmsg == NULL)
		return;

	FUNC9(&sb, sbmsg, CAM_PERIPH_DEVD_MSG_SIZE, SBUF_FIXEDLEN);

	periph = FUNC17(ccb->ccb_h.path);
	FUNC10(&sb, "device=%s%d ", periph->periph_name,
	    periph->unit_number);

	FUNC10(&sb, "serial=\"");
	if ((cgd = (struct ccb_getdev *)FUNC15()) != NULL) {
		FUNC18(&cgd->ccb_h, ccb->ccb_h.path,
		    CAM_PRIORITY_NORMAL);
		cgd->ccb_h.func_code = XPT_GDEV_TYPE;
		FUNC14((union ccb *)cgd);

		if (cgd->ccb_h.status == CAM_REQ_CMP)
			FUNC5(&sb, cgd->serial_num, cgd->serial_num_len);
		FUNC16((union ccb *)cgd);
	}
	FUNC10(&sb, "\" ");
	FUNC10(&sb, "cam_status=\"0x%x\" ", ccb->ccb_h.status);

	switch (ccb->ccb_h.status & CAM_STATUS_MASK) {
	case CAM_CMD_TIMEOUT:
		FUNC10(&sb, "timeout=%d ", ccb->ccb_h.timeout);
		type = "timeout";
		break;
	case CAM_SCSI_STATUS_ERROR:
		FUNC10(&sb, "scsi_status=%d ", ccb->csio.scsi_status);
		if (FUNC12(ccb, &serr, &sk, &asc, &ascq))
			FUNC10(&sb, "scsi_sense=\"%02x %02x %02x %02x\" ",
			    serr, sk, asc, ascq);
		type = "error";
		break;
	case CAM_ATA_STATUS_ERROR:
		FUNC10(&sb, "RES=\"");
		FUNC1(&ccb->ataio.res, &sb);
		FUNC10(&sb, "\" ");
		type = "error";
		break;
	default:
		type = "error";
		break;
	}

	if (ccb->ccb_h.func_code == XPT_SCSI_IO) {
		FUNC10(&sb, "CDB=\"");
		FUNC11(FUNC13(&ccb->csio), &sb);
		FUNC10(&sb, "\" ");
	} else if (ccb->ccb_h.func_code == XPT_ATA_IO) {
		FUNC10(&sb, "ACB=\"");
		FUNC0(&ccb->ataio.cmd, &sb);
		FUNC10(&sb, "\" ");
	}

	if (FUNC8(&sb) == 0)
		FUNC2("CAM", "periph", type, FUNC6(&sb));
	FUNC7(&sb);
	FUNC3(sbmsg, M_CAMPERIPH);
}