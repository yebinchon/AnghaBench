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
struct TYPE_4__ {int flags; } ;
union ccb {TYPE_1__ crcn; } ;
struct cam_periph {scalar_t__ softc; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  request_ccbs; } ;
typedef  TYPE_2__ nvme_probe_softc ;

/* Variables and functions */
 int CAM_EXPECT_INQ_CHANGE ; 
 int /*<<< orphan*/  CAM_PRIORITY_XPT ; 
 int /*<<< orphan*/  NVME_PROBE_IDENTIFY_CD ; 
 int /*<<< orphan*/  NVME_PROBE_NO_ANNOUNCE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_periph*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cam_periph *periph)
{
	union ccb *ccb;
	nvme_probe_softc *softc;

	softc = (nvme_probe_softc *)periph->softc;
	ccb = (union ccb *)FUNC1(&softc->request_ccbs);

	FUNC0(softc, NVME_PROBE_IDENTIFY_CD);

	if (ccb->crcn.flags & CAM_EXPECT_INQ_CHANGE)
		softc->flags |= NVME_PROBE_NO_ANNOUNCE;
	else
		softc->flags &= ~NVME_PROBE_NO_ANNOUNCE;

	FUNC2(periph, CAM_PRIORITY_XPT);
}