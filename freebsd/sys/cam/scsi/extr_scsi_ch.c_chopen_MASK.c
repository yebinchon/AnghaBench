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
struct ch_softc {int flags; int /*<<< orphan*/  open_count; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;

/* Variables and functions */
 int CH_FLAG_INVALID ; 
 int ENXIO ; 
 int PCATCH ; 
 int PRIBIO ; 
 scalar_t__ FUNC0 (struct cam_periph*) ; 
 int FUNC1 (struct cam_periph*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*) ; 
 int FUNC7 (struct cam_periph*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, int flags, int fmt, struct thread *td)
{
	struct cam_periph *periph;
	struct ch_softc *softc;
	int error;

	periph = (struct cam_periph *)dev->si_drv1;
	if (FUNC0(periph) != 0)
		return (ENXIO);

	softc = (struct ch_softc *)periph->softc;

	FUNC2(periph);
	
	if (softc->flags & CH_FLAG_INVALID) {
		FUNC4(periph);
		FUNC6(periph);
		return(ENXIO);
	}

	if ((error = FUNC1(periph, PRIBIO | PCATCH)) != 0) {
		FUNC6(periph);
		FUNC3(periph);
		return (error);
	}

	/*
	 * Load information about this changer device into the softc.
	 */
	if ((error = FUNC7(periph)) != 0) {
		FUNC5(periph);
		FUNC4(periph);
		FUNC6(periph);
		return(error);
	}

	FUNC5(periph);

	softc->open_count++;

	FUNC6(periph);

	return(error);
}