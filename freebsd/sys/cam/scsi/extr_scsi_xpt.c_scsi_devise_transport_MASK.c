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
typedef  union ccb {int dummy; } ccb ;
struct scsi_inquiry_data {int spi3data; } ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {scalar_t__ valid; } ;
struct TYPE_8__ {int /*<<< orphan*/  func_code; } ;
struct ccb_trans_settings {int transport_version; int protocol_version; TYPE_3__ xport_specific; TYPE_2__ proto_specific; int /*<<< orphan*/  protocol; int /*<<< orphan*/  transport; int /*<<< orphan*/  type; TYPE_4__ ccb_h; } ;
struct ccb_pathinq {int protocol_version; int transport_version; int /*<<< orphan*/  transport; TYPE_4__ ccb_h; } ;
struct cam_path {struct cam_ed* device; TYPE_1__* target; } ;
struct cam_ed {int flags; int protocol_version; int transport_version; int /*<<< orphan*/  protocol; int /*<<< orphan*/  transport; struct scsi_inquiry_data inq_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  ed_entries; } ;

/* Variables and functions */
 int CAM_DEV_INQUIRY_DATA_VALID ; 
 int /*<<< orphan*/  CAM_PRIORITY_NONE ; 
 int /*<<< orphan*/  CTS_TYPE_CURRENT_SETTINGS ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int FUNC0 (struct scsi_inquiry_data*) ; 
 int SID_SPI_MASK ; 
 struct cam_ed* FUNC1 (int /*<<< orphan*/ *) ; 
 struct cam_ed* FUNC2 (struct cam_ed*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPORT_SPI ; 
 int /*<<< orphan*/  XPT_PATH_INQ ; 
 int /*<<< orphan*/  XPT_SET_TRAN_SETTINGS ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC3 (union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct cam_path*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct cam_path *path)
{
	struct ccb_pathinq cpi;
	struct ccb_trans_settings cts;
	struct scsi_inquiry_data *inq_buf;

	/* Get transport information from the SIM */
	FUNC4(&cpi.ccb_h, path, CAM_PRIORITY_NONE);
	cpi.ccb_h.func_code = XPT_PATH_INQ;
	FUNC3((union ccb *)&cpi);

	inq_buf = NULL;
	if ((path->device->flags & CAM_DEV_INQUIRY_DATA_VALID) != 0)
		inq_buf = &path->device->inq_data;
	path->device->protocol = PROTO_SCSI;
	path->device->protocol_version =
	    inq_buf != NULL ? FUNC0(inq_buf) : cpi.protocol_version;
	path->device->transport = cpi.transport;
	path->device->transport_version = cpi.transport_version;

	/*
	 * Any device not using SPI3 features should
	 * be considered SPI2 or lower.
	 */
	if (inq_buf != NULL) {
		if (path->device->transport == XPORT_SPI
		 && (inq_buf->spi3data & SID_SPI_MASK) == 0
		 && path->device->transport_version > 2)
			path->device->transport_version = 2;
	} else {
		struct cam_ed* otherdev;

		for (otherdev = FUNC1(&path->target->ed_entries);
		     otherdev != NULL;
		     otherdev = FUNC2(otherdev, links)) {
			if (otherdev != path->device)
				break;
		}

		if (otherdev != NULL) {
			/*
			 * Initially assume the same versioning as
			 * prior luns for this target.
			 */
			path->device->protocol_version =
			    otherdev->protocol_version;
			path->device->transport_version =
			    otherdev->transport_version;
		} else {
			/* Until we know better, opt for safety */
			path->device->protocol_version = 2;
			if (path->device->transport == XPORT_SPI)
				path->device->transport_version = 2;
			else
				path->device->transport_version = 0;
		}
	}

	/*
	 * XXX
	 * For a device compliant with SPC-2 we should be able
	 * to determine the transport version supported by
	 * scrutinizing the version descriptors in the
	 * inquiry buffer.
	 */

	/* Tell the controller what we think */
	FUNC4(&cts.ccb_h, path, CAM_PRIORITY_NONE);
	cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
	cts.type = CTS_TYPE_CURRENT_SETTINGS;
	cts.transport = path->device->transport;
	cts.transport_version = path->device->transport_version;
	cts.protocol = path->device->protocol;
	cts.protocol_version = path->device->protocol_version;
	cts.proto_specific.valid = 0;
	cts.xport_specific.valid = 0;
	FUNC3((union ccb *)&cts);
}