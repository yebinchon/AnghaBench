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
typedef  int /*<<< orphan*/  target_id_t ;
struct cam_periph {int dummy; } ;
struct cam_path {struct cam_ed* device; struct cam_et* target; struct cam_eb* bus; struct cam_periph* periph; } ;
struct cam_et {int dummy; } ;
struct cam_ed {int dummy; } ;
struct cam_eb {int /*<<< orphan*/  eb_mtx; TYPE_2__* xport; } ;
typedef  int /*<<< orphan*/  path_id_t ;
typedef  int /*<<< orphan*/  lun_id_t ;
typedef  scalar_t__ cam_status ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {struct cam_ed* (* alloc_device ) (struct cam_eb*,struct cam_et*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cam_path*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 scalar_t__ CAM_PATH_INVALID ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_RESRC_UNAVAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cam_ed* FUNC3 (struct cam_eb*,struct cam_et*,int /*<<< orphan*/ ) ; 
 struct cam_et* FUNC4 (struct cam_eb*,int /*<<< orphan*/ ) ; 
 struct cam_eb* FUNC5 (int /*<<< orphan*/ ) ; 
 struct cam_ed* FUNC6 (struct cam_et*,int /*<<< orphan*/ ) ; 
 struct cam_et* FUNC7 (struct cam_eb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct cam_eb*) ; 
 int /*<<< orphan*/  FUNC10 (struct cam_ed*) ; 
 int /*<<< orphan*/  FUNC11 (struct cam_et*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

cam_status
FUNC13(struct cam_path *new_path, struct cam_periph *perph,
		 path_id_t path_id, target_id_t target_id, lun_id_t lun_id)
{
	struct	     cam_eb *bus;
	struct	     cam_et *target;
	struct	     cam_ed *device;
	cam_status   status;

	status = CAM_REQ_CMP;	/* Completed without error */
	target = NULL;		/* Wildcarded */
	device = NULL;		/* Wildcarded */

	/*
	 * We will potentially modify the EDT, so block interrupts
	 * that may attempt to create cam paths.
	 */
	bus = FUNC5(path_id);
	if (bus == NULL) {
		status = CAM_PATH_INVALID;
	} else {
		FUNC8();
		FUNC1(&bus->eb_mtx);
		target = FUNC7(bus, target_id);
		if (target == NULL) {
			/* Create one */
			struct cam_et *new_target;

			new_target = FUNC4(bus, target_id);
			if (new_target == NULL) {
				status = CAM_RESRC_UNAVAIL;
			} else {
				target = new_target;
			}
		}
		FUNC12();
		if (target != NULL) {
			device = FUNC6(target, lun_id);
			if (device == NULL) {
				/* Create one */
				struct cam_ed *new_device;

				new_device =
				    (*(bus->xport->ops->alloc_device))(bus,
								       target,
								       lun_id);
				if (new_device == NULL) {
					status = CAM_RESRC_UNAVAIL;
				} else {
					device = new_device;
				}
			}
		}
		FUNC2(&bus->eb_mtx);
	}

	/*
	 * Only touch the user's data if we are successful.
	 */
	if (status == CAM_REQ_CMP) {
		new_path->periph = perph;
		new_path->bus = bus;
		new_path->target = target;
		new_path->device = device;
		FUNC0(new_path, CAM_DEBUG_TRACE, ("xpt_compile_path\n"));
	} else {
		if (device != NULL)
			FUNC10(device);
		if (target != NULL)
			FUNC11(target);
		if (bus != NULL)
			FUNC9(bus);
	}
	return (status);
}