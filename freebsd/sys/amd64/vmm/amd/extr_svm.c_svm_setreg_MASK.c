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
struct svm_softc {int /*<<< orphan*/  vm; } ;
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int VM_REG_GUEST_INTR_SHADOW ; 
 int /*<<< orphan*/  FUNC1 (struct svm_softc*,int) ; 
 int FUNC2 (struct svm_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct svm_softc*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg, int vcpu, int ident, uint64_t val)
{
	struct svm_softc *svm_sc;
	register_t *reg;

	svm_sc = arg;

	if (ident == VM_REG_GUEST_INTR_SHADOW) {
		return (FUNC2(svm_sc, vcpu, val));
	}

	if (FUNC4(svm_sc, vcpu, ident, val) == 0) {
		return (0);
	}

	reg = FUNC3(FUNC1(svm_sc, vcpu), ident);

	if (reg != NULL) {
		*reg = val;
		return (0);
	}

	/*
	 * XXX deal with CR3 and invalidate TLB entries tagged with the
	 * vcpu's ASID. This needs to be treated differently depending on
	 * whether 'running' is true/false.
	 */

	FUNC0(svm_sc->vm, vcpu, "svm_setreg: unknown register %#x", ident);
	return (EINVAL);
}