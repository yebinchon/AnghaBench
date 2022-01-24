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
struct thread {int /*<<< orphan*/  td_ucred; } ;
struct pass_softc {int flags; int /*<<< orphan*/  open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int EPERM ; 
 int FREAD ; 
 int FWRITE ; 
 int O_NONBLOCK ; 
 int PASS_FLAG_INVALID ; 
 scalar_t__ FUNC0 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct cam_periph *periph;
	struct pass_softc *softc;
	int error;

	periph = (struct cam_periph *)dev->si_drv1;
	if (FUNC0(periph) != 0)
		return (ENXIO);

	FUNC1(periph);

	softc = (struct pass_softc *)periph->softc;

	if (softc->flags & PASS_FLAG_INVALID) {
		FUNC2(periph);
		FUNC3(periph);
		return(ENXIO);
	}

	/*
	 * Don't allow access when we're running at a high securelevel.
	 */
	error = FUNC4(td->td_ucred, 1);
	if (error) {
		FUNC2(periph);
		FUNC3(periph);
		return(error);
	}

	/*
	 * Only allow read-write access.
	 */
	if (((flags & FWRITE) == 0) || ((flags & FREAD) == 0)) {
		FUNC2(periph);
		FUNC3(periph);
		return(EPERM);
	}

	/*
	 * We don't allow nonblocking access.
	 */
	if ((flags & O_NONBLOCK) != 0) {
		FUNC5(periph->path, "can't do nonblocking access\n");
		FUNC2(periph);
		FUNC3(periph);
		return(EINVAL);
	}

	softc->open_count++;

	FUNC3(periph);

	return (error);
}