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
struct amdvi_softc {int /*<<< orphan*/  dev; struct amdvi_ctrl* ctrl; } ;
struct amdvi_ctrl {int control; int /*<<< orphan*/  cmd_head; int /*<<< orphan*/  cmd_tail; } ;

/* Variables and functions */
 int AMDVI_CTRL_EN ; 
 int /*<<< orphan*/  FUNC0 (struct amdvi_softc*,char*) ; 
 scalar_t__ FUNC1 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdvi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct amdvi_softc *softc)
{
	struct amdvi_ctrl *ctrl;
	int i;

	FUNC0(softc, ("softc is NULL"));

	ctrl = softc->ctrl;
	FUNC0(ctrl != NULL, ("ctrl is NULL"));
	/* Don't wait if h/w is not enabled. */
	if ((ctrl->control & AMDVI_CTRL_EN) == 0)
		return;

	for (i = 0; i < 10; i++) {
		if (FUNC1(softc))
			return;
	}

	FUNC3(softc->dev, "Error: completion failed"
		      " tail:0x%x, head:0x%x.\n",
		      ctrl->cmd_tail, ctrl->cmd_head);
	FUNC2(softc);
}