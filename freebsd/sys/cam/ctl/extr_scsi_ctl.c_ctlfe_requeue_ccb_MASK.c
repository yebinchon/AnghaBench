#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ func_code; int /*<<< orphan*/  flags; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct mtx {int dummy; } ;
struct ctlfe_lun_softc {int /*<<< orphan*/  inot_list; int /*<<< orphan*/  atio_list; } ;
struct cam_periph {int flags; int /*<<< orphan*/  path; scalar_t__ softc; } ;
struct TYPE_5__ {int /*<<< orphan*/  le; } ;

/* Variables and functions */
 int CAM_PERIPH_INVALID ; 
 int /*<<< orphan*/  CAM_PRIORITY_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ XPT_ACCEPT_TARGET_IO ; 
 struct mtx* FUNC1 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_periph*,union ccb*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 TYPE_2__ periph_links ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct cam_periph *periph, union ccb *ccb, int unlock)
{
	struct ctlfe_lun_softc *softc;
	struct mtx *mtx;

	if (periph->flags & CAM_PERIPH_INVALID) {
		mtx = FUNC1(periph);
		FUNC3(periph, ccb);
		if (unlock)
			FUNC4(mtx);
		return;
	}
	softc = (struct ctlfe_lun_softc *)periph->softc;
	if (ccb->ccb_h.func_code == XPT_ACCEPT_TARGET_IO)
		FUNC0(&softc->atio_list, &ccb->ccb_h, periph_links.le);
	else
		FUNC0(&softc->inot_list, &ccb->ccb_h, periph_links.le);
	if (unlock)
		FUNC2(periph);

	/*
	 * For a wildcard attachment, commands can come in with a specific
	 * target/lun.  Reset the target and LUN fields back to the wildcard
	 * values before we send them back down to the SIM.
	 */
	FUNC6(&ccb->ccb_h, periph->path, CAM_PRIORITY_NONE,
	    ccb->ccb_h.flags);

	FUNC5(ccb);
}