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
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  u_int64_t ;
typedef  int u_int32_t ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int AP_EXTEND ; 
 int /*<<< orphan*/  AP_FLAG_CHK_COND ; 
 int AP_PROTO_NON_DATA ; 
 int /*<<< orphan*/  ATA_AMAX_ADDR ; 
 int /*<<< orphan*/  ATA_AMAX_ADDR_GET ; 
 int /*<<< orphan*/  CAM_DIR_NONE ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int FUNC0 (struct cam_device*,union ccb*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct cam_device*,union ccb*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct cam_device *device, int retry_count,
		      u_int32_t timeout, union ccb *ccb,
		      u_int64_t *nativesize)
{
	int error;

	error = FUNC0(device,
			   ccb,
			   retry_count,
			   /*flags*/CAM_DIR_NONE,
			   /*protocol*/AP_PROTO_NON_DATA | AP_EXTEND,
			   /*ata_flags*/AP_FLAG_CHK_COND,
			   /*tag_action*/MSG_SIMPLE_Q_TAG,
			   /*command*/ATA_AMAX_ADDR,
			   /*features*/ATA_AMAX_ADDR_GET,
			   /*lba*/0,
			   /*sector_count*/0,
			   /*data_ptr*/NULL,
			   /*dxfer_len*/0,
			   timeout ? timeout : 30 * 1000,
			   /*force48bit*/1);

	if (error)
		return (error);

	return FUNC1(device, ccb, nativesize);
}