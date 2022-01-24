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
typedef  scalar_t__ uint64_t ;
struct vmcb_ctrl {int intr_shadow; } ;
struct svm_softc {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 struct vmcb_ctrl* FUNC1 (struct svm_softc*,int) ; 

__attribute__((used)) static int
FUNC2(struct svm_softc *sc, int vcpu, uint64_t val)
{
	struct vmcb_ctrl *ctrl;
	int oldval, newval;

	ctrl = FUNC1(sc, vcpu);
	oldval = ctrl->intr_shadow;
	newval = val ? 1 : 0;
	if (newval != oldval) {
		ctrl->intr_shadow = newval;
		FUNC0(sc->vm, vcpu, "Setting intr_shadow to %d", newval);
	}
	return (0);
}