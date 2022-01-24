#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct ccb_trans_settings {int dummy; } ;
struct cam_path {int /*<<< orphan*/  periph; } ;
struct cam_et {int /*<<< orphan*/  target_id; } ;
struct cam_ed {int flags; int /*<<< orphan*/  lun_id; } ;
struct cam_eb {int /*<<< orphan*/  path_id; } ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 scalar_t__ AC_BUS_RESET ; 
 scalar_t__ AC_INQ_CHANGED ; 
 scalar_t__ AC_LOST_DEVICE ; 
 scalar_t__ AC_SENT_BDR ; 
 scalar_t__ AC_TRANSFER_NEG ; 
 int CAM_DEV_UNCONFIGURED ; 
 int /*<<< orphan*/  CAM_EXPECT_INQ_CHANGE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_REQ_CMP_ERR ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  RELSIM_RELEASE_AFTER_TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct cam_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scsi_delay ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ccb_trans_settings*,struct cam_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_path*) ; 
 scalar_t__ FUNC5 (struct cam_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_ed*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_path*) ; 

__attribute__((used)) static void
FUNC8(u_int32_t async_code, struct cam_eb *bus, struct cam_et *target,
	      struct cam_ed *device, void *async_arg)
{
	cam_status status;
	struct cam_path newpath;

	/*
	 * We only need to handle events for real devices.
	 */
	if (target->target_id == CAM_TARGET_WILDCARD
	 || device->lun_id == CAM_LUN_WILDCARD)
		return;

	/*
	 * We need our own path with wildcards expanded to
	 * handle certain types of events.
	 */
	if ((async_code == AC_SENT_BDR)
	 || (async_code == AC_BUS_RESET)
	 || (async_code == AC_INQ_CHANGED))
		status = FUNC5(&newpath, NULL,
					  bus->path_id,
					  target->target_id,
					  device->lun_id);
	else
		status = CAM_REQ_CMP_ERR;

	if (status == CAM_REQ_CMP) {

		/*
		 * Allow transfer negotiation to occur in a
		 * tag free environment and after settle delay.
		 */
		if (async_code == AC_SENT_BDR
		 || async_code == AC_BUS_RESET) {
			FUNC0(&newpath);
			FUNC1(&newpath,
				RELSIM_RELEASE_AFTER_TIMEOUT,
				/*reduction*/0,
				/*timeout*/scsi_delay,
				/*getcount_only*/0);
			FUNC4(&newpath);
		}

		if (async_code == AC_INQ_CHANGED) {
			/*
			 * We've sent a start unit command, or
			 * something similar to a device that
			 * may have caused its inquiry data to
			 * change. So we re-scan the device to
			 * refresh the inquiry data for it.
			 */
			FUNC2(newpath.periph, &newpath,
				     CAM_EXPECT_INQ_CHANGE, NULL);
		}
		FUNC7(&newpath);
	} else if (async_code == AC_LOST_DEVICE &&
	    (device->flags & CAM_DEV_UNCONFIGURED) == 0) {
		device->flags |= CAM_DEV_UNCONFIGURED;
		FUNC6(device);
	} else if (async_code == AC_TRANSFER_NEG) {
		struct ccb_trans_settings *settings;
		struct cam_path path;

		settings = (struct ccb_trans_settings *)async_arg;
		FUNC5(&path, NULL, bus->path_id, target->target_id,
				 device->lun_id);
		FUNC3(settings, &path,
					  /*async_update*/TRUE);
		FUNC7(&path);
	}
}