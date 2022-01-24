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
union ccb {int /*<<< orphan*/  nvmeio; } ;
struct nda_softc {int flags; scalar_t__ refcount; scalar_t__ outstanding_cmds; TYPE_1__* disk; } ;
struct disk {scalar_t__ d_drv1; } ;
struct cam_periph {int flags; int /*<<< orphan*/  path; scalar_t__ softc; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_devstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int CAM_DEBUG_PERIPH ; 
 int CAM_DEBUG_TRACE ; 
 int CAM_PERIPH_INVALID ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int NDA_FLAG_DIRTY ; 
 int NDA_FLAG_OPEN ; 
 int /*<<< orphan*/  PRIBIO ; 
 union ccb* FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC5 (struct cam_periph*) ; 
 int FUNC6 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_periph*,scalar_t__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC10 (struct nda_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ndaerror ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (union ccb*) ; 

__attribute__((used)) static int
FUNC13(struct disk *dp)
{
	struct	cam_periph *periph;
	struct	nda_softc *softc;
	union ccb *ccb;
	int error;

	periph = (struct cam_periph *)dp->d_drv1;
	softc = (struct nda_softc *)periph->softc;
	FUNC4(periph);

	FUNC0(periph->path, CAM_DEBUG_TRACE | CAM_DEBUG_PERIPH,
	    ("ndaclose\n"));

	if ((softc->flags & NDA_FLAG_DIRTY) != 0 &&
	    (periph->flags & CAM_PERIPH_INVALID) == 0 &&
	    FUNC3(periph, PRIBIO) == 0) {

		ccb = FUNC2(periph, CAM_PRIORITY_NORMAL);
		FUNC10(softc, &ccb->nvmeio);
		error = FUNC6(ccb, ndaerror, /*cam_flags*/0,
		    /*sense_flags*/0, softc->disk->d_devstat);

		if (error != 0)
			FUNC11(periph->path, "Synchronize cache failed\n");
		else
			softc->flags &= ~NDA_FLAG_DIRTY;
		FUNC12(ccb);
		FUNC8(periph);
	}

	softc->flags &= ~NDA_FLAG_OPEN;

	while (softc->refcount != 0)
		FUNC7(periph, &softc->refcount, PRIBIO, "ndaclose", 1);
	FUNC1(softc->outstanding_cmds == 0,
	    ("nda %d outstanding commands", softc->outstanding_cmds));
	FUNC9(periph);
	FUNC5(periph);
	return (0);	
}