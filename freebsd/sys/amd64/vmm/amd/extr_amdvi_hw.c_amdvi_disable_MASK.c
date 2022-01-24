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
struct amdvi_softc {scalar_t__ control; struct amdvi_softc* ctrl; } ;
struct amdvi_ctrl {scalar_t__ control; struct amdvi_ctrl* ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdvi_softc*,char*) ; 
 struct amdvi_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int ivhd_count ; 
 int /*<<< orphan*/ * ivhd_devs ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct amdvi_ctrl *ctrl;
	struct amdvi_softc *softc;
	int i;

	for (i = 0; i < ivhd_count; i++) {
		softc = FUNC1(ivhd_devs[i]);
		FUNC0(softc, ("softc is NULL\n"));
		ctrl = softc->ctrl;
		FUNC0(ctrl, ("ctrl is NULL\n"));

		ctrl->control = 0;
	}
}