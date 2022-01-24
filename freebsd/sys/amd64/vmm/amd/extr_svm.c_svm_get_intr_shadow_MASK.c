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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmcb_ctrl {int /*<<< orphan*/  intr_shadow; } ;
struct svm_softc {int dummy; } ;

/* Variables and functions */
 struct vmcb_ctrl* FUNC0 (struct svm_softc*,int) ; 

__attribute__((used)) static int
FUNC1(struct svm_softc *sc, int vcpu, uint64_t *val)
{
	struct vmcb_ctrl *ctrl;

	ctrl = FUNC0(sc, vcpu);
	*val = ctrl->intr_shadow;
	return (0);
}