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
struct ccb_pathinq {scalar_t__ protocol; } ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ PROTO_SCSI ; 
 scalar_t__ FUNC0 (struct cam_device*,struct ccb_pathinq*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(struct cam_device *device)
{
	struct ccb_pathinq cpi;

	if (FUNC0(device, &cpi) != 0) {
		FUNC1("couldn't get CPI");
		return (-1);
	}

	if (cpi.protocol == PROTO_SCSI) {
		/* possibly compatible with pass_16 */
		return (1);
	}

	/* likely not compatible with pass_16 */
	return (0);
}