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
struct thread {int dummy; } ;
struct pt_softc {int flags; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int EBUSY ; 
 int ENXIO ; 
 int PT_FLAG_DEVICE_INVALID ; 
 int PT_FLAG_OPEN ; 
 scalar_t__ FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 

__attribute__((used)) static int
FUNC7(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct cam_periph *periph;
	struct pt_softc *softc;
	int error = 0;

	periph = (struct cam_periph *)dev->si_drv1;
	if (FUNC1(periph) != 0)
		return (ENXIO);	

	softc = (struct pt_softc *)periph->softc;

	FUNC2(periph);
	if (softc->flags & PT_FLAG_DEVICE_INVALID) {
		FUNC4(periph);
		FUNC5(periph);
		return(ENXIO);
	}

	if ((softc->flags & PT_FLAG_OPEN) == 0)
		softc->flags |= PT_FLAG_OPEN;
	else {
		error = EBUSY;
		FUNC3(periph);
	}

	FUNC0(periph->path, CAM_DEBUG_TRACE,
	    ("ptopen: dev=%s\n", FUNC6(dev)));

	FUNC5(periph);
	return (error);
}