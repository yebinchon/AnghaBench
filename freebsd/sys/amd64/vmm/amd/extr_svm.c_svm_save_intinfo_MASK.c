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
struct vmcb_ctrl {int /*<<< orphan*/  exitintinfo; } ;
struct svm_softc {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCPU_EXITINTINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vmcb_ctrl* FUNC3 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct svm_softc *svm_sc, int vcpu)
{
	struct vmcb_ctrl *ctrl;
	uint64_t intinfo;

	ctrl  = FUNC3(svm_sc, vcpu);
	intinfo = ctrl->exitintinfo;	
	if (!FUNC1(intinfo))
		return;

	/*
	 * From APMv2, Section "Intercepts during IDT interrupt delivery"
	 *
	 * If a #VMEXIT happened during event delivery then record the event
	 * that was being delivered.
	 */
	FUNC0(svm_sc->vm, vcpu, "SVM:Pending INTINFO(0x%lx), vector=%d.\n",
		intinfo, FUNC2(intinfo));
	FUNC5(svm_sc->vm, vcpu, VCPU_EXITINTINFO, 1);
	FUNC4(svm_sc->vm, vcpu, intinfo);
}