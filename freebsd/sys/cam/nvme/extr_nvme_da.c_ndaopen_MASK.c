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
struct nda_softc {int /*<<< orphan*/  flags; } ;
struct disk {scalar_t__ d_drv1; } ;
struct cam_periph {scalar_t__ softc; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int CAM_DEBUG_PERIPH ; 
 int CAM_DEBUG_TRACE ; 
 int ENXIO ; 
 int /*<<< orphan*/  NDA_FLAG_OPEN ; 
 int PCATCH ; 
 int PRIBIO ; 
 scalar_t__ FUNC1 (struct cam_periph*) ; 
 int FUNC2 (struct cam_periph*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_periph*) ; 

__attribute__((used)) static int
FUNC7(struct disk *dp)
{
	struct cam_periph *periph;
	struct nda_softc *softc;
	int error;

	periph = (struct cam_periph *)dp->d_drv1;
	if (FUNC1(periph) != 0) {
		return(ENXIO);
	}

	FUNC3(periph);
	if ((error = FUNC2(periph, PRIBIO|PCATCH)) != 0) {
		FUNC6(periph);
		FUNC4(periph);
		return (error);
	}

	FUNC0(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
	    ("ndaopen\n"));

	softc = (struct nda_softc *)periph->softc;
	softc->flags |= NDA_FLAG_OPEN;

	FUNC5(periph);
	FUNC6(periph);
	return (0);
}