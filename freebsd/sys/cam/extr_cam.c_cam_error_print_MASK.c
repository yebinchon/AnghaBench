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
struct cam_device {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  cam_error_string_flags ;
typedef  int /*<<< orphan*/  cam_error_proto_flags ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (struct cam_device*,union ccb*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 

void
FUNC2(struct cam_device *device, union ccb *ccb,
		cam_error_string_flags flags, cam_error_proto_flags proto_flags,
		FILE *ofile)
{
	char str[512];

	if ((device == NULL) || (ccb == NULL) || (ofile == NULL))
		return;

	FUNC1(ofile, "%s", FUNC0(device, ccb, str, sizeof(str),
		flags, proto_flags));
}