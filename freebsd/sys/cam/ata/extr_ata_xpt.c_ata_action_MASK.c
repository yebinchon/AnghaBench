#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int func_code; int /*<<< orphan*/  status; TYPE_5__* path; } ;
struct TYPE_9__ {int cdb_len; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
union ccb {TYPE_4__ ccb_h; TYPE_3__ csio; int /*<<< orphan*/  cts; TYPE_1__ crcn; } ;
typedef  int uint16_t ;
typedef  int u_int ;
struct TYPE_8__ {int config; } ;
struct cam_ed {int flags; TYPE_2__ ident_data; int /*<<< orphan*/  protocol; } ;
struct TYPE_11__ {struct cam_ed* device; int /*<<< orphan*/  periph; } ;

/* Variables and functions */
 int ATA_PROTO_ATAPI_12 ; 
 int ATA_PROTO_ATAPI_16 ; 
 int ATA_PROTO_CFA ; 
 int ATA_PROTO_MASK ; 
 int CAM_DEV_IDENTIFY_DATA_VALID ; 
 int /*<<< orphan*/  CAM_REQ_INVALID ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
#define  XPT_DEV_ADVINFO 134 
#define  XPT_GET_TRAN_SETTINGS 133 
#define  XPT_SCAN_BUS 132 
#define  XPT_SCAN_LUN 131 
#define  XPT_SCAN_TGT 130 
#define  XPT_SCSI_IO 129 
#define  XPT_SET_TRAN_SETTINGS 128 
 int /*<<< orphan*/  FUNC0 (union ccb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (union ccb*) ; 

__attribute__((used)) static void
FUNC7(union ccb *start_ccb)
{

	switch (start_ccb->ccb_h.func_code) {
	case XPT_SET_TRAN_SETTINGS:
	{
		FUNC4(&start_ccb->cts,
					   start_ccb->ccb_h.path,
					   /*async_update*/FALSE);
		break;
	}
	case XPT_SCAN_BUS:
	case XPT_SCAN_TGT:
		FUNC2(start_ccb->ccb_h.path->periph, start_ccb);
		break;
	case XPT_SCAN_LUN:
		FUNC3(start_ccb->ccb_h.path->periph,
			      start_ccb->ccb_h.path, start_ccb->crcn.flags,
			      start_ccb);
		break;
	case XPT_GET_TRAN_SETTINGS:
	{
		FUNC1(&start_ccb->cts);
		break;
	}
	case XPT_SCSI_IO:
	{
		struct cam_ed *device;
		u_int	maxlen = 0;

		device = start_ccb->ccb_h.path->device;
		if (device->protocol == PROTO_SCSI &&
		    (device->flags & CAM_DEV_IDENTIFY_DATA_VALID)) {
			uint16_t p =
			    device->ident_data.config & ATA_PROTO_MASK;

			maxlen =
			    (device->ident_data.config == ATA_PROTO_CFA) ? 0 :
			    (p == ATA_PROTO_ATAPI_16) ? 16 :
			    (p == ATA_PROTO_ATAPI_12) ? 12 : 0;
		}
		if (start_ccb->csio.cdb_len > maxlen) {
			start_ccb->ccb_h.status = CAM_REQ_INVALID;
			FUNC6(start_ccb);
			break;
		}
		FUNC5(start_ccb);
		break;
	}
	case XPT_DEV_ADVINFO:
	{
		FUNC0(start_ccb);
		break;
	}
	default:
		FUNC5(start_ccb);
		break;
	}
}