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
union ccb {int /*<<< orphan*/  csio; } ;
struct cd_softc {int flags; } ;
struct cam_periph {scalar_t__ softc; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CAM_DEBUG_TRACE ; 
 int /*<<< orphan*/  CAM_PRIORITY_NORMAL ; 
 int /*<<< orphan*/  CAM_RETRY_SELTO ; 
 int CD_FLAG_DISC_LOCKED ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int PR_ALLOW ; 
 int PR_PREVENT ; 
 int SF_NO_PRINT ; 
 int SF_RETRY_UA ; 
 int /*<<< orphan*/  SSD_FULL_SIZE ; 
 union ccb* FUNC1 (struct cam_periph*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd_retry_count ; 
 int /*<<< orphan*/  cderror ; 
 int FUNC2 (union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 

__attribute__((used)) static void
FUNC5(struct cam_periph *periph, int action)
{
	union	ccb *ccb;
	struct	cd_softc *softc;
	int	error;

	FUNC0(periph->path, CAM_DEBUG_TRACE, ("entering cdprevent\n"));

	softc = (struct cd_softc *)periph->softc;

	if (((action == PR_ALLOW)
	  && (softc->flags & CD_FLAG_DISC_LOCKED) == 0)
	 || ((action == PR_PREVENT)
	  && (softc->flags & CD_FLAG_DISC_LOCKED) != 0)) {
		return;
	}

	ccb = FUNC1(periph, CAM_PRIORITY_NORMAL);

	FUNC3(&ccb->csio,
		     /*retries*/ cd_retry_count,
		     /*cbfcnp*/NULL,
		     MSG_SIMPLE_Q_TAG,
		     action,
		     SSD_FULL_SIZE,
		     /* timeout */60000);

	error = FUNC2(ccb, cderror, /*cam_flags*/CAM_RETRY_SELTO,
			/*sense_flags*/SF_RETRY_UA|SF_NO_PRINT);

	FUNC4(ccb);

	if (error == 0) {
		if (action == PR_ALLOW)
			softc->flags &= ~CD_FLAG_DISC_LOCKED;
		else
			softc->flags |= CD_FLAG_DISC_LOCKED;
	}
}