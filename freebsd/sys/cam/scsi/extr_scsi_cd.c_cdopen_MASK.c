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
struct disk {scalar_t__ d_drv1; } ;
struct cd_softc {int flags; } ;
struct cam_periph {int /*<<< orphan*/  path; scalar_t__ softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int CAM_DEBUG_PERIPH ; 
 int CAM_DEBUG_TRACE ; 
 int CD_FLAG_INVALID ; 
 int ENXIO ; 
 int PCATCH ; 
 int PRIBIO ; 
 scalar_t__ FUNC1 (struct cam_periph*) ; 
 int FUNC2 (struct cam_periph*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_periph*,int) ; 

__attribute__((used)) static int
FUNC8(struct disk *dp)
{
	struct cam_periph *periph;
	struct cd_softc *softc;
	int error;

	periph = (struct cam_periph *)dp->d_drv1;
	softc = (struct cd_softc *)periph->softc;

	if (FUNC1(periph) != 0)
		return(ENXIO);

	FUNC3(periph);

	if (softc->flags & CD_FLAG_INVALID) {
		FUNC4(periph);
		FUNC6(periph);
		return(ENXIO);
	}

	if ((error = FUNC2(periph, PRIBIO | PCATCH)) != 0) {
		FUNC4(periph);
		FUNC6(periph);
		return (error);
	}

	FUNC0(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
	    ("cdopen\n"));

	/*
	 * Check for media, and set the appropriate flags.  We don't bail
	 * if we don't have media, but then we don't allow anything but the
	 * CDIOCEJECT/CDIOCCLOSE ioctls if there is no media.
	 */
	FUNC7(periph, /*do_wait*/ 1);

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("leaving cdopen\n"));
	FUNC5(periph);

	FUNC6(periph);

	return (0);
}