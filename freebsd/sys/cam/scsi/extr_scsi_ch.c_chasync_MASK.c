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
typedef  int u_int32_t ;
struct ccb_getdev {int /*<<< orphan*/  inq_data; int /*<<< orphan*/  protocol; } ;
struct cam_periph {int dummy; } ;
struct cam_path {int dummy; } ;
typedef  int cam_status ;

/* Variables and functions */
#define  AC_FOUND_DEVICE 128 
 int /*<<< orphan*/  CAM_PERIPH_BIO ; 
 int CAM_REQ_CMP ; 
 int CAM_REQ_INPROG ; 
 int /*<<< orphan*/  PROTO_SCSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SID_QUAL_LU_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_CHANGER ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_getdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,int,struct cam_path*,void*) ; 
 int /*<<< orphan*/  chcleanup ; 
 int /*<<< orphan*/  choninvalidate ; 
 int /*<<< orphan*/  chregister ; 
 int /*<<< orphan*/  chstart ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static void
FUNC5(void *callback_arg, u_int32_t code, struct cam_path *path, void *arg)
{
	struct cam_periph *periph;

	periph = (struct cam_periph *)callback_arg;

	switch(code) {
	case AC_FOUND_DEVICE:
	{
		struct ccb_getdev *cgd;
		cam_status status;

		cgd = (struct ccb_getdev *)arg;
		if (cgd == NULL)
			break;

		if (cgd->protocol != PROTO_SCSI)
			break;
		if (FUNC0(&cgd->inq_data) != SID_QUAL_LU_CONNECTED)
			break;
		if (FUNC1(&cgd->inq_data)!= T_CHANGER)
			break;

		/*
		 * Allocate a peripheral instance for
		 * this device and start the probe
		 * process.
		 */
		status = FUNC2(chregister, choninvalidate,
					  chcleanup, chstart, "ch",
					  CAM_PERIPH_BIO, path,
					  chasync, AC_FOUND_DEVICE, cgd);

		if (status != CAM_REQ_CMP
		 && status != CAM_REQ_INPROG)
			FUNC4("chasync: Unable to probe new device "
			       "due to status 0x%x\n", status);

		break;

	}
	default:
		FUNC3(periph, code, path, arg);
		break;
	}
}