#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ func_code; TYPE_2__* path; } ;
union ccb {int /*<<< orphan*/  csio; TYPE_1__ ccb_h; } ;
struct cam_ed {int /*<<< orphan*/  inq_data; } ;
typedef  int /*<<< orphan*/  cdb_str ;
struct TYPE_4__ {struct cam_ed* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_CDB ; 
 int SCSI_MAX_CDBLEN ; 
 scalar_t__ XPT_SCSI_IO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(union ccb *ccb)
{
	char cdb_str[(SCSI_MAX_CDBLEN * 3) + 1];
	struct cam_ed *device;

	if (ccb->ccb_h.func_code != XPT_SCSI_IO)
		return;

	device = ccb->ccb_h.path->device;
	FUNC0(ccb->ccb_h.path,
	    CAM_DEBUG_CDB,("%s. CDB: %s\n",
		FUNC2(FUNC3(&ccb->csio)[0], &device->inq_data),
		FUNC1(FUNC3(&ccb->csio), cdb_str, sizeof(cdb_str))));
}