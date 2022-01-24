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
struct pass_softc {int /*<<< orphan*/  add_physpath_task; } ;
struct ccb_getdev {int dummy; } ;
struct cam_status_entry {char* status_text; } ;
struct cam_periph {scalar_t__ softc; } ;
struct cam_path {int dummy; } ;
typedef  int cam_status ;

/* Variables and functions */
#define  AC_ADVINFO_CHANGED 129 
#define  AC_FOUND_DEVICE 128 
 int /*<<< orphan*/  CAM_PERIPH_BIO ; 
 int CAM_REQ_CMP ; 
 int CAM_REQ_INPROG ; 
 uintptr_t CDAI_TYPE_PHYS_PATH ; 
 struct cam_status_entry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct cam_path*,void (*) (void*,int,struct cam_path*,void*),int const,struct ccb_getdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,int,struct cam_path*,void*) ; 
 int /*<<< orphan*/  passcleanup ; 
 int /*<<< orphan*/  passoninvalidate ; 
 int /*<<< orphan*/  passregister ; 
 int /*<<< orphan*/  passstart ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC6(void *callback_arg, u_int32_t code,
	  struct cam_path *path, void *arg)
{
	struct cam_periph *periph;

	periph = (struct cam_periph *)callback_arg;

	switch (code) {
	case AC_FOUND_DEVICE:
	{
		struct ccb_getdev *cgd;
		cam_status status;
 
		cgd = (struct ccb_getdev *)arg;
		if (cgd == NULL)
			break;

		/*
		 * Allocate a peripheral instance for
		 * this device and start the probe
		 * process.
		 */
		status = FUNC2(passregister, passoninvalidate,
					  passcleanup, passstart, "pass",
					  CAM_PERIPH_BIO, path,
					  passasync, AC_FOUND_DEVICE, cgd);

		if (status != CAM_REQ_CMP
		 && status != CAM_REQ_INPROG) {
			const struct cam_status_entry *entry;

			entry = FUNC0(status);

			FUNC4("passasync: Unable to attach new device "
			       "due to status %#x: %s\n", status, entry ?
			       entry->status_text : "Unknown");
		}

		break;
	}
	case AC_ADVINFO_CHANGED:
	{
		uintptr_t buftype;

		buftype = (uintptr_t)arg;
		if (buftype == CDAI_TYPE_PHYS_PATH) {
			struct pass_softc *softc;

			softc = (struct pass_softc *)periph->softc;
			/*
			 * Acquire a reference to the periph before we
			 * start the taskqueue, so that we don't run into
			 * a situation where the periph goes away before
			 * the task queue has a chance to run.
			 */
			if (FUNC1(periph) != 0)
				break;

			FUNC5(taskqueue_thread,
					  &softc->add_physpath_task);
		}
		break;
	}
	default:
		FUNC3(periph, code, path, arg);
		break;
	}
}