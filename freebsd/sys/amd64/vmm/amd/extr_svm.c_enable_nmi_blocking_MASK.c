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
struct svm_softc {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  VMCB_CTRL1_INTCPT ; 
 int /*<<< orphan*/  VMCB_INTCPT_IRET ; 
 int /*<<< orphan*/  FUNC2 (struct svm_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct svm_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct svm_softc *sc, int vcpu)
{

	FUNC0(!FUNC2(sc, vcpu), ("vNMI already blocked"));
	FUNC1(sc->vm, vcpu, "vNMI blocking enabled");
	FUNC3(sc, vcpu, VMCB_CTRL1_INTCPT, VMCB_INTCPT_IRET);
}