#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  path; } ;
struct ccb_scsiio {int /*<<< orphan*/ * data_ptr; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_scsiio csio; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int u_int ;
struct scsi_vpd_unit_serial_number {int dummy; } ;
struct scsi_vpd_supported_page_list {int dummy; } ;
struct scsi_vpd_extended_inquiry_data {int dummy; } ;
struct scsi_vpd_device_id {int dummy; } ;
struct scsi_mode_header_6 {int dummy; } ;
struct scsi_mode_blk_desc {int dummy; } ;
struct scsi_inquiry_data {int dummy; } ;
struct scsi_control_page {int dummy; } ;
struct cam_periph {TYPE_4__* path; scalar_t__ softc; } ;
struct cam_ed {int flags; int serial_num_len; unsigned char* serial_num; struct scsi_inquiry_data inq_data; } ;
struct TYPE_10__ {int action; int flags; int /*<<< orphan*/  context; int /*<<< orphan*/  digest; } ;
typedef  TYPE_3__ probe_softc ;
struct TYPE_12__ {int quirks; } ;
struct TYPE_11__ {struct cam_ed* device; TYPE_2__* target; } ;
struct TYPE_9__ {int rpl_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_DEV_QFREEZE ; 
 int CAM_DEV_UNCONFIGURED ; 
 int CAM_QUIRK_NOVPDS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_inquiry_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int /*<<< orphan*/  M_CAMXPT ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
#define  PROBE_DEVICE_ID 140 
#define  PROBE_DV_EXIT 139 
#define  PROBE_EXTENDED_INQUIRY 138 
#define  PROBE_FULL_INQUIRY 137 
#define  PROBE_INQUIRY 136 
#define  PROBE_INQUIRY_BASIC_DV1 135 
#define  PROBE_INQUIRY_BASIC_DV2 134 
 int PROBE_INQUIRY_CKSUM ; 
#define  PROBE_MODE_SENSE 133 
#define  PROBE_REPORT_LUNS 132 
 int PROBE_SERIAL_CKSUM ; 
#define  PROBE_SERIAL_NUM 131 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int const) ; 
#define  PROBE_SUPPORTED_VPD_LIST 130 
#define  PROBE_TUR 129 
#define  PROBE_TUR_FOR_NEGOTIATION 128 
 int /*<<< orphan*/  RPL_REPORT_DEFAULT ; 
 TYPE_6__* FUNC6 (struct cam_ed*) ; 
 int SHORT_INQUIRY_LENGTH ; 
 int FUNC7 (struct scsi_inquiry_data*) ; 
 int /*<<< orphan*/  SMS_CONTROL_MODE_PAGE ; 
 int /*<<< orphan*/  SMS_PAGE_CTRL_CURRENT ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 int /*<<< orphan*/  SSD_MIN_SIZE ; 
 int /*<<< orphan*/  SVPD_DEVICE_ID ; 
 int SVPD_DEVICE_ID_MAX_SIZE ; 
 int /*<<< orphan*/  SVPD_EXTENDED_INQUIRY_DATA ; 
 int /*<<< orphan*/  SVPD_SUPPORTED_PAGE_LIST ; 
 int /*<<< orphan*/  SVPD_UNIT_SERIAL_NUMBER ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int const) ; 
 int /*<<< orphan*/  FUNC13 (struct cam_periph*,union ccb*) ; 
 int FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ccb_scsiio*,int,int /*<<< orphan*/  (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ccb_scsiio*,int,int /*<<< orphan*/  (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ccb_scsiio*,int,int /*<<< orphan*/  (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct ccb_scsiio*,int,int /*<<< orphan*/  (*) (struct cam_periph*,union ccb*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (union ccb*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,char*) ; 

__attribute__((used)) static void
FUNC22(struct cam_periph *periph, union ccb *start_ccb)
{
	/* Probe the device that our peripheral driver points to */
	struct ccb_scsiio *csio;
	probe_softc *softc;

	FUNC0(start_ccb->ccb_h.path, CAM_DEBUG_TRACE, ("probestart\n"));

	softc = (probe_softc *)periph->softc;
	csio = &start_ccb->csio;
again:

	switch (softc->action) {
	case PROBE_TUR:
	case PROBE_TUR_FOR_NEGOTIATION:
	case PROBE_DV_EXIT:
	{
		FUNC18(csio,
				     /*retries*/4,
				     probedone,
				     MSG_SIMPLE_Q_TAG,
				     SSD_FULL_SIZE,
				     /*timeout*/60000);
		break;
	}
	case PROBE_INQUIRY:
	case PROBE_FULL_INQUIRY:
	case PROBE_INQUIRY_BASIC_DV1:
	case PROBE_INQUIRY_BASIC_DV2:
	{
		u_int inquiry_len;
		struct scsi_inquiry_data *inq_buf;

		inq_buf = &periph->path->device->inq_data;

		/*
		 * If the device is currently configured, we calculate an
		 * MD5 checksum of the inquiry data, and if the serial number
		 * length is greater than 0, add the serial number data
		 * into the checksum as well.  Once the inquiry and the
		 * serial number check finish, we attempt to figure out
		 * whether we still have the same device.
		 */
		if (((periph->path->device->flags & CAM_DEV_UNCONFIGURED) == 0)
		 && ((softc->flags & PROBE_INQUIRY_CKSUM) == 0)) {

			FUNC3(&softc->context);
			FUNC4(&softc->context, (unsigned char *)inq_buf,
				  sizeof(struct scsi_inquiry_data));
			softc->flags |= PROBE_INQUIRY_CKSUM;
			if (periph->path->device->serial_num_len > 0) {
				FUNC4(&softc->context,
					  periph->path->device->serial_num,
					  periph->path->device->serial_num_len);
				softc->flags |= PROBE_SERIAL_CKSUM;
			}
			FUNC2(softc->digest, &softc->context);
		}

		if (softc->action == PROBE_INQUIRY)
			inquiry_len = SHORT_INQUIRY_LENGTH;
		else
			inquiry_len = FUNC7(inq_buf);

		/*
		 * Some parallel SCSI devices fail to send an
		 * ignore wide residue message when dealing with
		 * odd length inquiry requests.  Round up to be
		 * safe.
		 */
		inquiry_len = FUNC14(inquiry_len, 2);

		if (softc->action == PROBE_INQUIRY_BASIC_DV1
		 || softc->action == PROBE_INQUIRY_BASIC_DV2) {
			inq_buf = FUNC11(inquiry_len, M_CAMXPT, M_NOWAIT);
		}
		if (inq_buf == NULL) {
			FUNC21(periph->path, "malloc failure- skipping Basic"
			    "Domain Validation\n");
			FUNC5(softc, PROBE_DV_EXIT);
			FUNC18(csio,
					     /*retries*/4,
					     probedone,
					     MSG_SIMPLE_Q_TAG,
					     SSD_FULL_SIZE,
					     /*timeout*/60000);
			break;
		}
		FUNC15(csio,
			     /*retries*/4,
			     probedone,
			     MSG_SIMPLE_Q_TAG,
			     (u_int8_t *)inq_buf,
			     inquiry_len,
			     /*evpd*/FALSE,
			     /*page_code*/0,
			     SSD_MIN_SIZE,
			     /*timeout*/60 * 1000);
		break;
	}
	case PROBE_REPORT_LUNS:
	{
		void *rp;

		rp = FUNC11(periph->path->target->rpl_size,
		    M_CAMXPT, M_NOWAIT | M_ZERO);
		if (rp == NULL) {
			struct scsi_inquiry_data *inq_buf;
			inq_buf = &periph->path->device->inq_data;
			FUNC21(periph->path,
			    "Unable to alloc report luns storage\n");
			if (FUNC1(inq_buf))
				FUNC5(softc, PROBE_MODE_SENSE);
			else
				FUNC5(softc,
				    PROBE_SUPPORTED_VPD_LIST);
			goto again;
		}
		FUNC17(csio, 5, probedone, MSG_SIMPLE_Q_TAG,
		    RPL_REPORT_DEFAULT, rp, periph->path->target->rpl_size,
		    SSD_FULL_SIZE, 60000); break;
		break;
	}
	case PROBE_MODE_SENSE:
	{
		void  *mode_buf;
		int    mode_buf_len;

		mode_buf_len = sizeof(struct scsi_mode_header_6)
			     + sizeof(struct scsi_mode_blk_desc)
			     + sizeof(struct scsi_control_page);
		mode_buf = FUNC11(mode_buf_len, M_CAMXPT, M_NOWAIT);
		if (mode_buf != NULL) {
	                FUNC16(csio,
					/*retries*/4,
					probedone,
					MSG_SIMPLE_Q_TAG,
					/*dbd*/FALSE,
					SMS_PAGE_CTRL_CURRENT,
					SMS_CONTROL_MODE_PAGE,
					mode_buf,
					mode_buf_len,
					SSD_FULL_SIZE,
					/*timeout*/60000);
			break;
		}
		FUNC21(periph->path, "Unable to mode sense control page - "
		    "malloc failure\n");
		FUNC5(softc, PROBE_SUPPORTED_VPD_LIST);
	}
	/* FALLTHROUGH */
	case PROBE_SUPPORTED_VPD_LIST:
	{
		struct scsi_vpd_supported_page_list *vpd_list;
		struct cam_ed *device;

		vpd_list = NULL;
		device = periph->path->device;

		if ((FUNC6(device)->quirks & CAM_QUIRK_NOVPDS) == 0)
			vpd_list = FUNC11(sizeof(*vpd_list), M_CAMXPT,
			    M_NOWAIT | M_ZERO);

		if (vpd_list != NULL) {
			FUNC15(csio,
				     /*retries*/4,
				     probedone,
				     MSG_SIMPLE_Q_TAG,
				     (u_int8_t *)vpd_list,
				     sizeof(*vpd_list),
				     /*evpd*/TRUE,
				     SVPD_SUPPORTED_PAGE_LIST,
				     SSD_MIN_SIZE,
				     /*timeout*/60 * 1000);
			break;
		}
done:
		/*
		 * We'll have to do without, let our probedone
		 * routine finish up for us.
		 */
		start_ccb->csio.data_ptr = NULL;
		FUNC8(periph->path);
		FUNC9(periph);
		FUNC13(periph, start_ccb);
		return;
	}
	case PROBE_DEVICE_ID:
	{
		struct scsi_vpd_device_id *devid;

		devid = NULL;
		if (FUNC19(periph, SVPD_DEVICE_ID))
			devid = FUNC11(SVPD_DEVICE_ID_MAX_SIZE, M_CAMXPT,
			    M_NOWAIT | M_ZERO);

		if (devid != NULL) {
			FUNC15(csio,
				     /*retries*/4,
				     probedone,
				     MSG_SIMPLE_Q_TAG,
				     (uint8_t *)devid,
				     SVPD_DEVICE_ID_MAX_SIZE,
				     /*evpd*/TRUE,
				     SVPD_DEVICE_ID,
				     SSD_MIN_SIZE,
				     /*timeout*/60 * 1000);
			break;
		}
		goto done;
	}
	case PROBE_EXTENDED_INQUIRY:
	{
		struct scsi_vpd_extended_inquiry_data *ext_inq;

		ext_inq = NULL;
		if (FUNC19(periph, SVPD_EXTENDED_INQUIRY_DATA))
			ext_inq = FUNC11(sizeof(*ext_inq), M_CAMXPT,
			    M_NOWAIT | M_ZERO);

		if (ext_inq != NULL) {
			FUNC15(csio,
				     /*retries*/4,
				     probedone,
				     MSG_SIMPLE_Q_TAG,
				     (uint8_t *)ext_inq,
				     sizeof(*ext_inq),
				     /*evpd*/TRUE,
				     SVPD_EXTENDED_INQUIRY_DATA,
				     SSD_MIN_SIZE,
				     /*timeout*/60 * 1000);
			break;
		}
		/*
		 * We'll have to do without, let our probedone
		 * routine finish up for us.
		 */
		goto done;
	}
	case PROBE_SERIAL_NUM:
	{
		struct scsi_vpd_unit_serial_number *serial_buf;
		struct cam_ed* device;

		serial_buf = NULL;
		device = periph->path->device;
		if (device->serial_num != NULL) {
			FUNC10(device->serial_num, M_CAMXPT);
			device->serial_num = NULL;
			device->serial_num_len = 0;
		}

		if (FUNC19(periph, SVPD_UNIT_SERIAL_NUMBER))
			serial_buf = (struct scsi_vpd_unit_serial_number *)
				FUNC11(sizeof(*serial_buf), M_CAMXPT,
				    M_NOWAIT|M_ZERO);

		if (serial_buf != NULL) {
			FUNC15(csio,
				     /*retries*/4,
				     probedone,
				     MSG_SIMPLE_Q_TAG,
				     (u_int8_t *)serial_buf,
				     sizeof(*serial_buf),
				     /*evpd*/TRUE,
				     SVPD_UNIT_SERIAL_NUMBER,
				     SSD_MIN_SIZE,
				     /*timeout*/60 * 1000);
			break;
		}
		goto done;
	}
	default:
		FUNC12("probestart: invalid action state 0x%x\n", softc->action);
	}
	start_ccb->ccb_h.flags |= CAM_DEV_QFREEZE;
	FUNC9(periph);
	FUNC20(start_ccb);
}