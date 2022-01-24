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
struct amdvi_softc {int /*<<< orphan*/  total_cmd; int /*<<< orphan*/  event_intr_cnt; int /*<<< orphan*/  dev; struct amdvi_ctrl* ctrl; } ;
struct amdvi_ctrl {int status; int /*<<< orphan*/  cmd_head; int /*<<< orphan*/  cmd_tail; int /*<<< orphan*/  evt_tail; int /*<<< orphan*/  evt_head; } ;

/* Variables and functions */
 int AMDVI_STATUS_EV_INTR ; 
 int AMDVI_STATUS_EV_OF ; 
 int /*<<< orphan*/  FUNC0 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct amdvi_softc *softc;
	struct amdvi_ctrl *ctrl;

	softc = (struct amdvi_softc *)arg;
	ctrl = softc->ctrl;
	FUNC1(softc->dev, "EVT INTR %ld Status:0x%x"
	    " EVT Head:0x%x Tail:0x%x]\n", softc->event_intr_cnt++,
	    ctrl->status, ctrl->evt_head, ctrl->evt_tail);
	FUNC2("  [CMD Total 0x%lx] Tail:0x%x, Head:0x%x.\n",
	    softc->total_cmd, ctrl->cmd_tail, ctrl->cmd_head);

	FUNC0(softc);
	ctrl->status &= AMDVI_STATUS_EV_OF | AMDVI_STATUS_EV_INTR;
}