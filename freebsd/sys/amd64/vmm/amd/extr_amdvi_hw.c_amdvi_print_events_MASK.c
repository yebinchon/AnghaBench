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
struct amdvi_softc {int event_max; int /*<<< orphan*/  dev; struct amdvi_event* event; struct amdvi_ctrl* ctrl; } ;
struct amdvi_event {int /*<<< orphan*/  opcode; } ;
struct amdvi_ctrl {int evt_head; int /*<<< orphan*/  evt_tail; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdvi_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct amdvi_softc *softc)
{
	struct amdvi_ctrl *ctrl;
	struct amdvi_event *event;
	int i, size;

	ctrl = softc->ctrl;
	size = sizeof(struct amdvi_event);
	for (i = 0; i < softc->event_max; i++) {
		event = &softc->event[ctrl->evt_head / size];
		if (!event->opcode)
			break;
		FUNC2(softc->dev, "\t[Event%d: Head:0x%x Tail:0x%x]\n",
		    i, ctrl->evt_head, ctrl->evt_tail);
		FUNC1(event);
		ctrl->evt_head = FUNC0(ctrl->evt_head, size,
		    softc->event_max);
	}
}