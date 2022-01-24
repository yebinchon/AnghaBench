#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* entries; } ;
struct TYPE_6__ {int /*<<< orphan*/  status; TYPE_2__ sim_priv; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct aac_softc {int /*<<< orphan*/  aac_dev; } ;
struct aac_event {int ev_type; } ;
struct aac_cam {int /*<<< orphan*/  sim; } ;
struct TYPE_4__ {struct aac_cam* ptr; } ;

/* Variables and functions */
#define  AAC_EVENT_CMFREE 128 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  M_AACCAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union ccb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct aac_softc *sc, struct aac_event *event, void *arg)
{
	union ccb *ccb;
	struct aac_cam *camsc;

	switch (event->ev_type) {
	case AAC_EVENT_CMFREE:
		ccb = arg;
		camsc = ccb->ccb_h.sim_priv.entries[0].ptr;
		FUNC1(event, M_AACCAM);
		FUNC3(camsc->sim, 1);
		ccb->ccb_h.status = CAM_REQUEUE_REQ;
		FUNC2(ccb);
		break;
	default:
		FUNC0(sc->aac_dev, "unknown event %d in aac_cam\n",
		    event->ev_type);
		break;
	}
}