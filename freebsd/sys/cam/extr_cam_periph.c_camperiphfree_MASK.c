#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  func_code; } ;
union ccb {int /*<<< orphan*/  cpi; TYPE_1__ ccb_h; } ;
struct periph_driver {int /*<<< orphan*/  generation; int /*<<< orphan*/  units; int /*<<< orphan*/  driver_name; } ;
struct cam_periph {scalar_t__ periph_allocating; int flags; int deferred_ac; int /*<<< orphan*/  path; int /*<<< orphan*/  (* deferred_callback ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  (* periph_dtor ) (struct cam_periph*) ;int /*<<< orphan*/  periph_name; int /*<<< orphan*/  unit_number; } ;

/* Variables and functions */
#define  AC_FOUND_DEVICE 129 
#define  AC_PATH_REGISTERED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_INFO ; 
 int CAM_PERIPH_ANNOUNCED ; 
 int CAM_PERIPH_FREE ; 
 int CAM_PERIPH_NEW_DEV_FOUND ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_CAMPERIPH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPT_GDEV_TYPE ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 struct periph_driver** periph_drivers ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  rebooting ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  unit_links ; 
 int /*<<< orphan*/  FUNC9 (union ccb*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void
FUNC17(struct cam_periph *periph)
{
	struct periph_driver **p_drv;
	struct periph_driver *drv;

	FUNC3(periph, MA_OWNED);
	FUNC1(periph->periph_allocating == 0, ("%s%d: freed while allocating",
	    periph->periph_name, periph->unit_number));
	for (p_drv = periph_drivers; *p_drv != NULL; p_drv++) {
		if (FUNC6((*p_drv)->driver_name, periph->periph_name) == 0)
			break;
	}
	if (*p_drv == NULL) {
		FUNC5("camperiphfree: attempt to free non-existant periph\n");
		return;
	}
	/*
	 * Cache a pointer to the periph_driver structure.  If a
	 * periph_driver is added or removed from the array (see
	 * periphdriver_register()) while we drop the toplogy lock
	 * below, p_drv may change.  This doesn't protect against this
	 * particular periph_driver going away.  That will require full
	 * reference counting in the periph_driver infrastructure.
	 */
	drv = *p_drv;

	/*
	 * We need to set this flag before dropping the topology lock, to
	 * let anyone who is traversing the list that this peripheral is
	 * about to be freed, and there will be no more reference count
	 * checks.
	 */
	periph->flags |= CAM_PERIPH_FREE;

	/*
	 * The peripheral destructor semantics dictate calling with only the
	 * SIM mutex held.  Since it might sleep, it should not be called
	 * with the topology lock held.
	 */
	FUNC16();

	/*
	 * We need to call the peripheral destructor prior to removing the
	 * peripheral from the list.  Otherwise, we risk running into a
	 * scenario where the peripheral unit number may get reused
	 * (because it has been removed from the list), but some resources
	 * used by the peripheral are still hanging around.  In particular,
	 * the devfs nodes used by some peripherals like the pass(4) driver
	 * aren't fully cleaned up until the destructor is run.  If the
	 * unit number is reused before the devfs instance is fully gone,
	 * devfs will panic.
	 */
	if (periph->periph_dtor != NULL)
		periph->periph_dtor(periph);

	/*
	 * The peripheral list is protected by the topology lock.
	 */
	FUNC11();

	FUNC2(&drv->units, periph, unit_links);
	drv->generation++;

	FUNC14(periph);

	FUNC16();
	if ((periph->flags & CAM_PERIPH_ANNOUNCED) && !rebooting)
		FUNC13(periph->path, "Periph destroyed\n");
	else
		FUNC0(periph->path, CAM_DEBUG_INFO, ("Periph destroyed\n"));

	if (periph->flags & CAM_PERIPH_NEW_DEV_FOUND) {
		union ccb ccb;
		void *arg;

		switch (periph->deferred_ac) {
		case AC_FOUND_DEVICE:
			ccb.ccb_h.func_code = XPT_GDEV_TYPE;
			FUNC15(&ccb.ccb_h, periph->path, CAM_PRIORITY_NORMAL);
			FUNC9(&ccb);
			arg = &ccb;
			break;
		case AC_PATH_REGISTERED:
			FUNC12(&ccb.cpi, periph->path);
			arg = &ccb;
			break;
		default:
			arg = NULL;
			break;
		}
		periph->deferred_callback(NULL, periph->deferred_ac,
					  periph->path, arg);
	}
	FUNC10(periph->path);
	FUNC4(periph, M_CAMPERIPH);
	FUNC11();
}